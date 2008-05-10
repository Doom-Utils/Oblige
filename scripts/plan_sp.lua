----------------------------------------------------------------
--  PLANNER : Single Player / Co-Op
----------------------------------------------------------------
--
--  Oblige Level Maker (C) 2006-2008 Andrew Apted
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
----------------------------------------------------------------

--[[ *** CLASS INFORMATION ***

class PLAN
{
  all_rooms : array(ROOM) 

  head_zone : ZONE
}


class ROOM
{
  sx1, sy1, sx2, sy2 : coverage over SEED map

  kind  : "zone" | "hub" | "room" | "hallway"

  links : array(RLINK) -- all connections with other rooms

  parent : ZONE -- zone this room is directly contained in

  sprouts : array(SPROUT_POS) -- imminent branch points from this room

  quest : QUEST
}


class ZONE extends ROOM
{
  zone_kind : string  -- "solid" : nothing is between rooms
                      -- "view"  : area between rooms is viewable
                      --           but not traversable
                      -- "walk"  : area between rooms is traversable

  children : array(ROOM)

  sub_zones : array(ZONE)
}


class RLINK  -- Room Link
[
  rooms : array(ROOM) -- two entries for the linked rooms

  kind : string  -- "view" (windows, railings)
                 -- "fall" (one-way, fall-off from [1] into [2])
                 -- "walk" (two-way, typically an arch or door)

  teleport : true (for teleport links)

  door : string  -- "arch", "door" etc..

  lock : string  -- optional, for keyed/switched doors
}


class SPROUT_POS
{
  sx, sy : seed coordinate

  dir    : direction (2 4 6 8)

  basic_dir : general overall direction (1 - 9)
}


--------------------------------------------------------------]]

require 'defs'
require 'util'
require 'seeds'


function Room_W(R)
  return R.sx2 - R.sx1 + 1
end

function Room_H(R)
  return R.sy2 - R.sy1 + 1
end

function Room_assign_seeds(R)
  for x = R.sx1,R.sx2 do for y = R.sy1,R.sy2 do
    SEEDS[x][y][1].room = R
  end end
end

function Room_create(zone, kind)

  local ROOM =
  {
    kind = kind,
    parent = zone,
    links  = {},
  }

  table.insert(zone.children,  ROOM)
  table.insert(PLAN.all_rooms, ROOM)

  return ROOM
end

function Room_link(R1, R2, kind)

  local RLINK =
  {
    rooms = { R1, R2 },
    kind  = kind,
  }

  table.insert(R1.links, RLINK)
  table.insert(R2.links, RLINK)

  return RLINK
end



function populate_zone(ZN)
  assert(ZN)
  assert(ZN.zone_kind)

  local zone_W, zone_H = Room_W(ZN), Room_H(ZN)

  local num_subzones = 0
  local num_hubs = 0
  local num_rooms = 0

  local div_map = array_2D(9, 9)
  local div_W, div_H


  local function dump_div_map()
    
    local function div_content(x, y)
      local M = div_map[x][y]
      if not M then return "---" end
      if M.kind == "zone" then
        if M.mode == "walk" then
          return string.format("//%d", M.div_id % 10);
        elseif M.mode == "view" then
          return string.format("::%d", M.div_id % 10);
        elseif M.mode == "solid" then
          return string.format("##%d", M.div_id % 10);
        else
          return "Z??"
        end
      end
      if M.kind == "hub"  then return string.format("Hu%d", M.div_id % 10); end
      return string.format("R%02d", M.div_id % 100)
    end

    for y = div_H,1,-1 do
      local line = ""

      for x = 1,div_W do
        line = line .. div_content(x, y) .. " "
      end

      con.printf("> %s\n", line)
    end

    con.printf("\n")
  end


  local function div_to_seed_range(x1,y1, x2,y2)
    
    local sx1 = 1 + int((x1 - 1) * zone_W / div_W)
    local sy1 = 1 + int((y1 - 1) * zone_H / div_H)

    local sx2 = int(x2 * zone_W / div_W)
    local sy2 = int(y2 * zone_H / div_H)

    assert(0 <= sx1 and sx1 <= sx2 and sx2 <= zone_W)
    assert(0 <= sy1 and sy1 <= sy2 and sy2 <= zone_H)

    sx1 = sx1 + (ZN.sx1 - 1)
    sy1 = sy1 + (ZN.sy1 - 1)

    sx2 = sx2 + (ZN.sx1 - 1)
    sy2 = sy2 + (ZN.sy1 - 1)

    return sx1, sy1, sx2, sy2
  end


  local function allocate_subzone(zone_id)

    -- find usable spot
    local x1,y1, x2,y2

    local function area_free(x1,y1, x2,y2)
      assert(1 <= x1 and x1 <= x2 and x2 <= div_W)
      assert(1 <= y1 and y1 <= y2 and y2 <= div_H)

      for x = x1,x2 do for y = y1,y2 do
        if div_map[x][y] then
          return false
        end
      end end -- x,y

      return true
    end

    local function touches_a_zone(x1,y1, x2,y2)
      for x = x1-1,x2+1 do for y = y1-1,y2+1 do
        if (x >= 1 and x <= div_W) and
           (y >= 1 and y <= div_H) and
           div_map[x][y] and
           div_map[x][y].kind == "zone"
        then
          return true
        end
      end end

      return false
    end

    local function find_usable_spot()
      for loop = 1,100 do

        local x = rand_irange(1, div_W)
        local y = rand_irange(1, div_H)

        if not div_map[x][y] and not touches_a_zone(x,y, x,y) then
          return x, y
        end
      end

      return nil -- not found
    end

    local function expand_zone(x, y)
      x1,y1 = x,y
      x2,y2 = x,y

      -- decide maximum size of zone
      local SIZE_MAP = { 1,1,2,3,3,4,5,5,6 }

      local max_w = SIZE_MAP[math.min(9,div_W)]
      local max_h = SIZE_MAP[math.min(9,div_H)]

--    con.printf("div_map %dx%d  prelim %dx%d  ", div_W, div_H, max_w, max_h)

      local REDUCE_MAP1 = { 0, 25, 33, 50 }
      local REDUCE_MAP2 = { 0,  0, 10, 20, 40 }

      if rand_odds(REDUCE_MAP1[math.min(4,max_w)]) then max_w = max_w - 1 end
      if rand_odds(REDUCE_MAP1[math.min(4,max_h)]) then max_h = max_h - 1 end

      if rand_odds(REDUCE_MAP2[math.min(5,max_w)]) then max_w = max_w - 1 end
      if rand_odds(REDUCE_MAP2[math.min(5,max_h)]) then max_h = max_h - 1 end

--    con.printf("final %dx%d\n", max_w, max_h)

      for loop = 1,24 do
        local dir = rand_irange(1,4) * 2

        local tx1,ty1 = x1,y1
        local tx2,ty2 = x2,y2

            if dir == 2 then ty1 = ty1 - 1
        elseif dir == 4 then tx1 = tx1 - 1
        elseif dir == 6 then tx2 = tx2 + 1
        elseif dir == 8 then ty2 = ty2 + 1
        end

        if (tx1 < 1 or ty1 < 1 or tx2 > div_W or ty2 > div_H) or
           (tx2 - tx1 + 1) > max_w or
           (ty2 - ty1 + 1) > max_h or
           not area_free(tx1,ty1, tx2,ty2) or
           touches_a_zone(tx1,ty1, tx2,ty2)
        then
          -- not valid, skip it
        else
          -- OK!
          x1,y1 = tx1,ty1
          x2,y2 = tx2,ty2
        end
      end -- for loop
    end

    local function new_zone_kind()
      local result

      -- type of zone must be different to parent
      repeat
        result = rand_key_by_probs { walk=70, view=50, solid=30 }
      until result ~= ZN.zone_kind

      return result
    end


    --| allocate_subzone |--

    local xx, yy = find_usable_spot()

    if not xx then return end

    expand_zone(xx, yy)


    local SUB_ZONE =
    {
      zone_kind = new_zone_kind(),
      children  = {},

      parent = ZN,
      links  = {},
    }

    -- update division map
    local DZ = { kind="zone", div_id=zone_id, mode=SUB_ZONE.zone_kind }

    for xx = x1,x2 do for yy = y1,y2 do
      div_map[xx][yy] = DZ
    end end

    -- place zone in seed map
    SUB_ZONE.sx1, SUB_ZONE.sy1,
    SUB_ZONE.sx2, SUB_ZONE.sy2 = div_to_seed_range(x1,y1, x2,y2)

    SUB_ZONE.sx1 = SUB_ZONE.sx1 + 1
    SUB_ZONE.sy1 = SUB_ZONE.sy1 + 1
    SUB_ZONE.sx2 = SUB_ZONE.sx2 - 1
    SUB_ZONE.sy2 = SUB_ZONE.sy2 - 1

    for sx = SUB_ZONE.sx1, SUB_ZONE.sx2 do
      for sy = SUB_ZONE.sy1, SUB_ZONE.sy2 do
        SEEDS[sx][sy][1].zone = SUB_ZONE
      end
    end

    table.insert(ZN.sub_zones, SUB_ZONE)

    num_subzones = num_subzones + 1

    -- recursively populate it
    populate_zone(SUB_ZONE)
  end


  local function allocate_hub(hub_id)

    local hub_list = {}

    for axis2 = 1,math.min(div_W, div_H) do

      local xx, yy
      if div_W >= div_H then
        xx, yy = hub_id, axis2
      else
        xx, yy = axis2, hub_id
      end

      if not div_map[xx][yy] then
        local H = { kind="hub", div_id=hub_id, x=xx, y=yy }
        table.insert(hub_list, H)
      end
    end

    -- nothing we can do when the row/column is completely full
    if #hub_list == 0 then return end

    local H = rand_element(hub_list)

    div_map[H.x][H.y] = H

    local HUB = Room_create(ZN, "hub")

    HUB.is_initial = true

    local sx1, sy1, sx2, sy2 = div_to_seed_range(H.x,H.y, H.x,H.y)

    local sp_W = sx2 - sx1 + 1
    local sp_H = sy2 - sy1 + 1

    -- determine size of hub
    local hub_W, hub_H

    assert(sp_W >= 8 and sp_H >= 8)

    repeat
      hub_W = 1 + 2 * rand_index_by_probs { 50, 90, 17, 2 }
      hub_H = 1 + 2 * rand_index_by_probs { 50, 90, 17, 2 }
    until (hub_W <= sp_W-5) and (hub_H <= sp_H-5) and
          (hub_W * hub_H <= 45)

    con.printf("Hub size %dx%d\n", hub_W, hub_H)

    HUB.sx1 = sx1 + int((sp_W - hub_W) / 2)
    HUB.sy1 = sy1 + int((sp_H - hub_H) / 2)

    HUB.sx1 = HUB.sx1 + rand_index_by_probs { 10, 30, 50, 30, 10 } - 3
    HUB.sy1 = HUB.sy1 + rand_index_by_probs { 10, 30, 50, 30, 10 } - 3

    HUB.sx2 = HUB.sx1 + hub_W - 1
    HUB.sy2 = HUB.sy1 + hub_H - 1

    assert(HUB.sx2 < sx2)
    assert(HUB.sy2 < sy2)

    Room_assign_seeds(HUB)

    num_hubs  = num_hubs  + 1
    num_rooms = num_rooms + 1
  end


  local function allocate_room(xx, yy)
    -- something already there?
    if div_map[xx][yy] then return end

    div_map[xx][yy] = { kind="room", div_id=xx*10+yy }

    local ROOM = Room_create(ZN, "normal")

    ROOM.is_initial = true

    local sx1, sy1, sx2, sy2 = div_to_seed_range(xx,yy, xx,yy)

    local sp_W = sx2 - sx1 + 1
    local sp_H = sy2 - sy1 + 1

    -- determine size of hub
    local room_W, room_H

    assert(sp_W >= 7 and sp_H >= 7)

    room_W = rand_index_by_probs { 0, 32, 80, 16, 4 }
    room_H = rand_index_by_probs { 0, 32, 80, 16, 4 }

    con.printf("Room size %dx%d\n", room_W, room_H)

    ROOM.sx1 = sx1 + rand_irange(0, sp_W - room_W)
    ROOM.sy1 = sy1 + rand_irange(0, sp_H - room_H)

    ROOM.sx2 = ROOM.sx1 + room_W - 1
    ROOM.sy2 = ROOM.sy1 + room_H - 1

    assert(ROOM.sx2 <= sx2)
    assert(ROOM.sy2 <= sy2)

    Room_assign_seeds(ROOM)

    num_rooms = num_rooms + 1
  end


  --==| populate_zone |==--


  local space_W = rand_irange(9,14)
  local space_H = rand_irange(9,14)

  if space_W > zone_W then space_W = zone_W end
  if space_H > zone_H then space_H = zone_H end

  div_W = int(zone_W / space_W)
  div_H = int(zone_H / space_H)

  assert(div_W >= 1 and div_W <= div_map.w)
  assert(div_H >= 1 and div_H <= div_map.h)


  -- add sub-zones
  local max_SUBZONE = int((div_W + div_H + 1) / 2) - 1

  for i = 1,max_SUBZONE do
    if rand_odds(50) then
      allocate_subzone(i)
    end
  end

  -- add hubs
  if div_W == 1 and div_H == 1 then
    local HUB_chance = (space_W + space_H - 10) * 6
    if rand_odds(HUB_chance) then
      allocate_hub(1)
    end
  else
    for i = 1,math.max(div_W, div_H) do
      if rand_odds(50) then
        allocate_hub(i)
      end
    end
  end

  -- add normal rooms
  repeat
    for xx = 1,div_W do for yy = 1,div_H do
      if rand_odds(50) then
        allocate_room(xx, yy)
      end
    end end  
  until num_rooms > 0

-- [[
    dump_div_map()
-- ]]

  div_map = nil
end


function weave_tangled_web()
  -- creates a sprawling mess of hallways and rooms that branch
  -- out from the initial rooms / hubs.


  function sprouts_for_room(R)
    -- FIXME
  end


  function sprouts_for_hub(R)

    -- there are three main branch points for the top of the hub
    -- (assuming a hub wider than it is high), as in the following
    -- diagram:
    --             B  A  B
    --             #######
    --            C#######C
    --             #######
    --
    -- and the same logic applies to the bottom half (C is shared
    -- with the top half, only A2 and B2 are distinct).
    --
    -- The branch points are symmetrical along the wider axis
    -- (e.g. we either create C on both sides or neither side).
    --
    -- Point A can be 0 (not used), 1 (middle seed), or 2 which
    -- actually means TWO branch points (one each side of the
    -- middle seed).
    --
    -- Point B can be 0 (not used), 1 for the usual position
    -- above the corner, 2 for one seed towards A, or 3 for
    -- for being on the side of the corner (instead of the top).
    --
    -- Point C can be 0 (not used) or 1 (present).
    --
    -- We require the following relationships to be upheld:
    --   + two branch points are not adjacent (e.g. C=1 and B=3)
    --   + total number of branch points is sane (4 - 8)
    
    local long, deep = Room_W(R), Room_H(R)
    local vertical = false

    if (long < deep) or (long == deep and rand_odds(50)) then
      long, deep = deep, long
      vertical = true
    end


    local A1, A2, B1, B2, C

    local function is_acceptable()
      local total = A1 + A2 + C*2 + sel(B1>0, 2, 0) + sel(B2>0, 2, 0)

      if total < 4 or total > 8 then return false end

      if (C == 1) and (B1 == 3 or B2 == 3) then return false end

      if (A1 == 2) and (B1 == 1 or B1 == 2) then return false end
      if (A2 == 2) and (B2 == 1 or B2 == 2) then return false end

      if long < 5 and (A1 == 1) and (B1 == 1) then return false end
      if long < 5 and (A2 == 1) and (B2 == 1) then return false end

      if long < 5 and (B1 == 2 or B2 == 2) then return false end
      if long < 7 and (A1 == 2 or A2 == 2) then return false end

      if long < 7 and (A1 == 1) and (B1 == 2) then return false end
      if long < 7 and (A2 == 1) and (B2 == 2) then return false end

      return true --OK--
    end

    local function dump_hub_sprouts()
      con.printf("Hub: %dx%d  A1=%d B1=%d  C=%d  B2=%d A2=%d\n",
                 long, deep, A1, B1, C, B2, A2)
      for y = 0,deep+1 do
        for x = 0,long+1 do
          local ch = " "
          local cx = (x >= 1 and x <= long)
          local cy = (y >= 1 and y <= deep)
          if cx and cy then
            ch = "#"
          elseif cy then
            if y == int((deep+1)/2) and C==1 then ch = "C" end
            if y == 1 and B1 == 3 then ch = "B" end
            if y == deep and B2 == 3 then ch = "B" end
          elseif cx and (y == 0) then
            if (x == 1 or x == long) and B1 == 1 then ch = "B" end
            if (x == 2 or x == long-1) and B1 == 2 then ch = "B" end
            if (x == int((long+1)/2)) and A1 == 1 then ch = "A" end
            if (math.abs(x - int((long+1)/2)) == 1) and A1 == 2 then ch = "A" end
          elseif cx and (y == deep+1) then
            if (x == 1 or x == long) and B2 == 1 then ch = "B" end
            if (x == 2 or x == long-1) and B2 == 2 then ch = "B" end
            if (x == int((long+1)/2)) and A2 == 1 then ch = "A" end
            if (math.abs(x - int((long+1)/2)) == 1) and A2 == 2 then ch = "A" end
          end
          con.printf(ch)
        end
        con.printf("\n")
      end
      con.printf("\n")
    end


    repeat
      A1 = rand_index_by_probs { 50, 65, 15 } - 1
      A2 = rand_index_by_probs { 50, 65, 15 } - 1

      B1 = rand_index_by_probs { 50, 33, 20, 25 } - 1
      B2 = rand_index_by_probs { 50, 33, 20, 25 } - 1

      C  = rand_index_by_probs { 50, 35 } - 1
    until is_acceptable()

--    ... blah ...
  end


  --==| weave_tangled_web |==--


  for _, R in ipairs(PLAN.all_rooms) do
    if R.kind == "hub" then
      sprouts_for_hub(R)
    elseif R.kind == "room" then
      sprouts_for_room(R)
    end
  end


  -- !!!!! grow the sprouts !!!!!
end


function Plan_rooms_sp()


  ---===| Plan_rooms_sp |===---

  con.printf("\n--==| Plan_rooms_sp |==--\n\n")


  local map_size = 30   -- FIXME: depends on GAME and LEVEL_SIZE_SETTING

  PLAN =
  {
    all_rooms = {},

    head_zone = 
    {
      zone_kind = "solid",

      children = {},

      sx1 = 1, sx2 = map_size,
      sy1 = 1, sy2 = map_size,

      links = {},
    }
  }

  Seed_init(map_size, map_size, 1, PLAN.head_zone)

  populate_zone(PLAN.head_zone)

  weave_tangled_web()

end

