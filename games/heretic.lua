----------------------------------------------------------------
-- GAME DEF : Heretic
----------------------------------------------------------------
--
--  Oblige Level Maker
--
--  Copyright (C) 2006-2010 Andrew Apted
--  Copyright (C)      2008 Sam Trenholme
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
--
--  Big thanks to Sam Trenholme who greatly improved the
--  Heretic theme (including lots of new COMBOs).
--
----------------------------------------------------------------

HERETIC = { }

HERETIC.THINGS =
{
  --- special stuff ---
  player1 = { id=1, kind="other", r=16,h=56 },
  player2 = { id=2, kind="other", r=16,h=56 },
  player3 = { id=3, kind="other", r=16,h=56 },
  player4 = { id=4, kind="other", r=16,h=56 },

  dm_player     = { id=11, kind="other", r=16,h=56 },
  teleport_spot = { id=14, kind="other", r=16,h=56 },

  --- monsters ---
  gargoyle   = { id=66, kind="monster", r=16,h=36 },
  fire_garg  = { id=5,  kind="monster", r=16,h=36 },
  mummy      = { id=68, kind="monster", r=22,h=64 },
  mummy_inv  = { id=69, kind="monster", r=22,h=64 },

  leader     = { id=45, kind="monster", r=22,h=64 },
  leader_inv = { id=46, kind="monster", r=22,h=64 },
  knight     = { id=64, kind="monster", r=24,h=80 },
  knight_inv = { id=65, kind="monster", r=24,h=80 },

  disciple   = { id=15, kind="monster", r=16,h=72 },
  sabreclaw  = { id=90, kind="monster", r=20,h=64 },
  weredragon = { id=70, kind="monster", r=34,h=80 },
  ophidian   = { id=92, kind="monster", r=22,h=72 },

  -- bosses
  Ironlich   = { id=6,  kind="monster", r=40,h=72 },
  Maulotaur  = { id=9,  kind="monster", r=28,h=104 },
  D_Sparil   = { id=7,  kind="monster", r=28,h=104 },

  --- pickups ---
  k_yellow   = { id=80, kind="pickup", r=20,h=16, pass=true },
  k_green    = { id=73, kind="pickup", r=20,h=16, pass=true },
  k_blue     = { id=79, kind="pickup", r=20,h=16, pass=true },

  gauntlets  = { id=2005, kind="pickup", r=20,h=16, pass=true },
  crossbow   = { id=2001, kind="pickup", r=20,h=16, pass=true },
  claw       = { id=53,   kind="pickup", r=20,h=16, pass=true },
  hellstaff  = { id=2004, kind="pickup", r=20,h=16, pass=true },
  phoenix    = { id=2003, kind="pickup", r=20,h=16, pass=true },
  firemace   = { id=2002, kind="pickup", r=20,h=16, pass=true },

  crystal    = { id=10, kind="pickup", r=20,h=16, pass=true },
  geode      = { id=12, kind="pickup", r=20,h=16, pass=true },
  arrow      = { id=18, kind="pickup", r=20,h=16, pass=true },
  quiver     = { id=19, kind="pickup", r=20,h=16, pass=true },
  claw_orb1  = { id=54, kind="pickup", r=20,h=16, pass=true },
  claw_orb2  = { id=55, kind="pickup", r=20,h=16, pass=true },
  runes1     = { id=20, kind="pickup", r=20,h=16, pass=true },
  runes2     = { id=21, kind="pickup", r=20,h=16, pass=true },
  flame_orb1 = { id=22, kind="pickup", r=20,h=16, pass=true },
  flame_orb2 = { id=23, kind="pickup", r=20,h=16, pass=true },
  mace_orb1  = { id=13, kind="pickup", r=20,h=16, pass=true },
  mace_orb2  = { id=16, kind="pickup", r=20,h=16, pass=true },

  h_vial  = { id=81, kind="pickup", r=20,h=16, pass=true },
  h_flask = { id=82, kind="pickup", r=20,h=16, pass=true },
  h_urn   = { id=32, kind="pickup", r=20,h=16, pass=true },
  shield1 = { id=85, kind="pickup", r=20,h=16, pass=true },
  shield2 = { id=31, kind="pickup", r=20,h=16, pass=true },

  bag     = { id=8,  kind="pickup", r=20,h=16, pass=true },
  wings   = { id=23, kind="pickup", r=20,h=16, pass=true },
  ovum    = { id=30, kind="pickup", r=20,h=16, pass=true },
  torch   = { id=33, kind="pickup", r=20,h=16, pass=true },
  bomb    = { id=34, kind="pickup", r=20,h=16, pass=true },
  map     = { id=35, kind="pickup", r=20,h=16, pass=true },
  chaos   = { id=36, kind="pickup", r=20,h=16, pass=true },
  shadow  = { id=75, kind="pickup", r=20,h=16, pass=true },
  ring    = { id=84, kind="pickup", r=20,h=16, pass=true },
  tome    = { id=86, kind="pickup", r=20,h=16, pass=true },

  --- scenery ---
  wall_torch    = { id=50, kind="scenery", r=10,h=64, light=255, pass=true, add_mode="extend" },
  serpent_torch = { id=27, kind="scenery", r=12,h=54, light=255 },
  fire_brazier  = { id=76, kind="scenery", r=16,h=44, light=255 },
  chandelier    = { id=28, kind="scenery", r=31,h=60, light=255, pass=true, ceil=true, add_mode="island" },

  barrel  = { id=44,   kind="scenery", r=12,h=32 },
  pod     = { id=2035, kind="scenery", r=16,h=54 },

  blue_statue   = { id=94, kind="scenery", r=16,h=54 },
  green_statue  = { id=95, kind="scenery", r=16,h=54 },
  yellow_statue = { id=96, kind="scenery", r=16,h=54 },

  moss1   = { id=48, kind="scenery", r=16,h=24, ceil=true, pass=true },
  moss2   = { id=49, kind="scenery", r=16,h=28, ceil=true, pass=true },
  volcano = { id=87, kind="scenery", r=12,h=32 },
  
  small_pillar = { id=29, kind="scenery", r=16,h=36 },
  brown_pillar = { id=47, kind="scenery", r=16,h=128 },
  glitter_red  = { id=74, kind="scenery", r=20,h=16, pass=true },
  glitter_blue = { id=52, kind="scenery", r=20,h=16, pass=true },

  stal_small_F = { id=37, kind="scenery", r=12,h=36 },
  stal_small_C = { id=39, kind="scenery", r=16,h=36, ceil=true },
  stal_big_F   = { id=38, kind="scenery", r=12,h=72 },
  stal_big_C   = { id=40, kind="scenery", r=16,h=72, ceil=true },

  hang_skull_1 = { id=17, kind="scenery", r=20,h=64, ceil=true, pass=true },
  hang_skull_2 = { id=24, kind="scenery", r=20,h=64, ceil=true, pass=true },
  hang_skull_3 = { id=25, kind="scenery", r=20,h=64, ceil=true, pass=true },
  hang_skull_4 = { id=26, kind="scenery", r=20,h=64, ceil=true, pass=true },
  hang_corpse  = { id=51, kind="scenery", r=12,h=104,ceil=true },

  --- ambient sounds ---
  amb_scream = { id=1200, kind="other", r=20,h=16, pass=true },
  amb_squish = { id=1201, kind="other", r=20,h=16, pass=true },
  amb_drip   = { id=1202, kind="other", r=20,h=16, pass=true },
  amb_feet   = { id=1203, kind="other", r=20,h=16, pass=true },
  amb_heart  = { id=1204, kind="other", r=20,h=16, pass=true },
  amb_bells  = { id=1205, kind="other", r=20,h=16, pass=true },
  amb_growl  = { id=1206, kind="other", r=20,h=16, pass=true },
  amb_magic  = { id=1207, kind="other", r=20,h=16, pass=true },
  amb_laugh  = { id=1208, kind="other", r=20,h=16, pass=true },
  amb_run    = { id=1209, kind="other", r=20,h=16, pass=true },

  env_water  = { id=41, kind="other", r=20,h=16, pass=true },
  env_wind   = { id=42, kind="other", r=20,h=16, pass=true },
}


----------------------------------------------------------------

HERETIC.MATERIALS =
{
  -- special materials --
  _ERROR = { t="WOODWL",  f="FLOOR10" },
  _SKY   = { t="CHAINSD", f="F_SKY1"  },

  -- textures with best-matching flat

  BANNER1  = { t="BANNER1",  f="FLOOR03" },
  BANNER2  = { t="BANNER2",  f="FLOOR03" },
  BANNER3  = { t="BANNER3",  f="FLAT520" },
  BANNER4  = { t="BANNER4",  f="FLAT520" },
  BANNER5  = { t="BANNER5",  f="FLOOR25" },
  BANNER6  = { t="BANNER6",  f="FLOOR25" },
  BANNER7  = { t="BANNER7",  f="FLOOR00" },
  BANNER8  = { t="BANNER8",  f="FLOOR00" },
  BLUEFRAG = { t="BLUEFRAG", f="FLOOR16" },
  BRWNRCKS = { t="BRWNRCKS", f="FLOOR17" },
  CELTIC   = { t="CELTIC",   f="FLOOR06" },
  CHAINMAN = { t="CHAINMAN", f="FLAT520" },
  CSTLMOSS = { t="CSTLMOSS", f="FLOOR03" },
  CSTLRCK  = { t="CSTLRCK",  f="FLOOR03" },
  CTYSTCI1 = { t="CTYSTCI1", f="FLOOR11" },
  CTYSTCI2 = { t="CTYSTCI2", f="FLOOR11" },
  CTYSTCI4 = { t="CTYSTCI4", f="FLOOR11" },
  CTYSTUC1 = { t="CTYSTUC1", f="FLOOR11" }, -- poor match
  CTYSTUC2 = { t="CTYSTUC2", f="FLOOR11" }, -- poor match
  CTYSTUC3 = { t="CTYSTUC3", f="FLOOR11" }, -- poor match
  CTYSTUC4 = { t="CTYSTUC4", f="FLOOR11" }, -- poor match
  CTYSTUC5 = { t="CTYSTUC5", f="FLOOR11" }, -- poor match
  DMNMSK   = { t="DMNMSK",   f="FLAT521" },
  DOOREXIT = { t="DOOREXIT", f="FLAT520" },
  DOORSTON = { t="DOORSTON", f="FLOOR30" },
  DOORWOOD = { t="DOORWOOD", f="FLAT507" },
  DRIPWALL = { t="DRIPWALL", f="FLOOR27" },

  GRNBLOK1 = { t="GRNBLOK1", f="FLOOR19" },
  GRNBLOK2 = { t="GRNBLOK2", f="FLOOR19" },
  GRNBLOK3 = { t="GRNBLOK3", f="FLOOR19" },
  GRNBLOK4 = { t="GRNBLOK4", f="FLOOR19" },
  GRSKULL1 = { t="GRSKULL1", f="FLAT521" },
  GRSKULL2 = { t="GRSKULL2", f="FLAT521" },
  GRSKULL3 = { t="GRSKULL3", f="FLAT521" },
  GRSTNPB  = { t="GRSTNPB",  f="FLAT520" },
  GRSTNPBV = { t="GRSTNPBV", f="FLAT520" },
  GRSTNPBW = { t="GRSTNPBW", f="FLAT520" },
  HORSES1  = { t="HORSES1",  f="FLAT520" },
  LAVA1    = { t="LAVA1",    f="FLAT506" },
  LAVAFL1  = { t="LAVAFL1",  f="FLATHUH1" },
  LOOSERCK = { t="LOOSERCK", f="FLOOR04" },  -- poor match
  METL1    = { t="METL1",    f="FLOOR29" },
  METL2    = { t="METL2",    f="FLOOR28" },
  MOSAIC1  = { t="MOSAIC1",  f="FLAT502" },
  MOSAIC2  = { t="MOSAIC2",  f="FLAT502" },
  MOSAIC3  = { t="MOSAIC3",  f="FLAT502" },
  MOSAIC4  = { t="MOSAIC4",  f="FLAT502" },
  MOSAIC5  = { t="MOSAIC5",  f="FLAT502" },
  MOSSRCK1 = { t="MOSSRCK1", f="FLOOR05" },
  ORNGRAY  = { t="ORNGRAY",  f="FLAT504" },

  RCKSNMUD = { t="RCKSNMUD", f="FLOOR01" },  -- poor match
  REDWALL  = { t="REDWALL",  f="FLOOR09" },
  ROOTWALL = { t="ROOTWALL", f="FLAT506" },
  SAINT1   = { t="SAINT1",   f="FLAT523" },
  SANDSQ2  = { t="SANDSQ2",  f="FLOOR06" },
  SKULLSB1 = { t="SKULLSB1", f="FLOOR30" },
  SNDBLCKS = { t="SNDBLCKS", f="FLOOR06" },
  SNDCHNKS = { t="SNDCHNKS", f="FLAT522" },
  SNDPLAIN = { t="SNDPLAIN", f="FLOOR25" },
  SPINE1   = { t="SPINE1",   f="FLOOR25" },
  SPINE2   = { t="SPINE2",   f="FLOOR25" },
  SQPEB1   = { t="SQPEB1",   f="FLAT504" },
  SQPEB2   = { t="SQPEB2",   f="FLOOR27" },  -- poor match
  STNGLS1  = { t="STNGLS1",  f="FLOOR30" },  -- poor match
  STNGLS2  = { t="STNGLS2",  f="FLOOR30" },  -- poor match
  STNGLS3  = { t="STNGLS3",  f="FLOOR30" },  -- poor match
  SW1OFF   = { t="SW1OFF",   f="FLOOR28" },
  SW1ON    = { t="SW1ON",    f="FLOOR28" },
  TMBSTON1 = { t="TMBSTON1", f="FLAT521" },
  TMBSTON2 = { t="TMBSTON2", f="FLAT521" },
  TRISTON1 = { t="TRISTON1", f="FLOOR00" },
  TRISTON2 = { t="TRISTON2", f="FLOOR17" },
  WATRWAL1 = { t="WATRWAL1", f="FLTFLWW1" },
  WOODWL   = { t="WOODWL",   f="FLOOR10" },

  -- flats with best-matching texture

  FLAT500  = { t="SQPEB1",   f="FLAT500"  },
  FLAT502  = { t="BLUEFRAG", f="FLAT502"  },
  FLAT503  = { t="SQPEB1",   f="FLAT503"  },
  FLAT504  = { t="SQPEB1",   f="FLAT504"  },
  FLAT506  = { t="ROOTWALL", f="FLAT506"  },
  FLAT507  = { t="DOORWOOD", f="FLAT507"  },
  FLAT508  = { t="DOORWOOD", f="FLAT508"  },
  FLAT509  = { t="LOOSERCK", f="FLAT509"  },  -- poor match
  FLAT510  = { t="BRWNRCKS", f="FLAT510"  },  -- poor match
  FLAT512  = { t="GRNBLOK1", f="FLAT512"  },
  FLAT513  = { t="GRNBLOK1", f="FLAT513"  },
  FLAT516  = { t="LOOSERCK", f="FLAT516"  },  -- poor match
  FLAT517  = { t="BLUEFRAG", f="FLAT517"  },  -- poor match
  FLAT520  = { t="CSTLRCK",  f="FLAT520"  },
  FLAT521  = { t="SQPEB1",   f="FLAT521"  },
  FLAT522  = { t="SNDCHNKS", f="FLAT522"  },
  FLAT523  = { t="GRSTNPB",  f="FLAT523"  },  -- poor match
  FLATHUH1 = { t="LAVAFL1",  f="FLATHUH1" },

  FLOOR00  = { t="TRISTON1", f="FLOOR00"  },
  FLOOR01  = { t="LOOSERCK", f="FLOOR01"  },  -- poor match
  FLOOR03  = { t="CSTLRCK",  f="FLOOR03"  },
  FLOOR04  = { t="CSTLRCK",  f="FLOOR04"  },
  FLOOR05  = { t="MOSSROCK", f="FLOOR05"  },
  FLOOR06  = { t="SANDSQ2",  f="FLOOR06"  },
  FLOOR07  = { t="MOSAIC1",  f="FLOOR07"  },  -- poor match
  FLOOR08  = { t="CHAINSD",  f="FLOOR08"  },
  FLOOR09  = { t="REDWALL",  f="FLOOR09"  },
  FLOOR10  = { t="WOODWL",   f="FLOOR10"  },
  FLOOR11  = { t="WOODWL",   f="FLOOR11"  },
  FLOOR12  = { t="WOODWL",   f="FLOOR12"  },
  FLOOR16  = { t="BLUEFRAG", f="FLOOR16"  },
  FLOOR17  = { t="BRWNRCKS", f="FLOOR17"  },
  FLOOR18  = { t="GRNBLOK1", f="FLOOR18"  },
  FLOOR19  = { t="GRNBLOK1", f="FLOOR19"  },
  FLOOR20  = { t="SQPEB2",   f="FLOOR20"  },
  FLOOR21  = { t="CHAINSD",  f="FLOOR21"  },
  FLOOR22  = { t="CHAINSD",  f="FLOOR22"  },
  FLOOR23  = { t="CHAINSD",  f="FLOOR23"  },
  FLOOR24  = { t="CHAINSD",  f="FLOOR24"  },
  FLOOR25  = { t="SPINE2",   f="FLOOR25"  },
  FLOOR26  = { t="CHAINSD",  f="FLOOR26"  },
  FLOOR27  = { t="SANDSQ2",  f="FLOOR27"  },
  FLOOR28  = { t="METL2",    f="FLOOR28"  },
  FLOOR29  = { t="METL1",    f="FLOOR29"  },
  FLOOR30  = { t="METL1",    f="FLOOR30"  },

  FLTFLWW1 = { t="WATRWAL1", f="FLTFLWW1" },
  FLTLAVA1 = { t="LAVA1",    f="FLTLAVA1" },  -- poor match
  FLTSLUD1 = { t="LAVA1",    f="FLTSLUD1" },  -- poor match
  FLTTELE1 = { t="CHAINSD",  f="FLTTELE1" },
  FLTWAWA1 = { t="WATRWAL1", f="FLTWAWA1" },  -- poor match


  -- Oblige stuff
  O_PILL   = { t="SKULLSB2", f="O_PILL" },
  O_BOLT   = { t="DOORWOOD", f="O_BOLT" },
  O_CARVE  = { t="CHAINSD",  f="O_CARVE" },
}


HERETIC.RAILS =
{
  wdgate = { wall="WDGAT64", w=64, h=64  },

  --!!! TODO
--GATMETL
--GATMETL2
--GATMETL3
--GATMETL4
--GATMETL5
--WEB1_B
--WEB1_F
--WEB2_B
--WEB2_F
--WEB3_M
}

HERETIC.SANITY_MAP =
{
  -- FIXME
}


HERETIC.STEPS =
{
  step1 = { step_w="STEP1", side_w="BROWNHUG", top_f="FLOOR7_1" },
}


HERETIC.PICTURES =
{
  -- Note: this includes pictures that only work on DOOM1 or DOOM2.
  -- It is not a problem, because the game-specific sub-themes will
  -- only reference the appropriate entries.

  pill =
  {
    count=1,
    pic_w="O_PILL", width=128, height=32, raise=16,
    x_offset=0, y_offset=0,
    side_t="METL2", floor="FLOOR30", depth=8, 
    light=0.7,
  },

  carve =
  {
    count=1,
    pic_w="O_CARVE", width=64, height=64,
    x_offset=0, y_offset=0,
    side_t="METL2", floor="FLOOR30", depth=8, 
    light=0.7,
  },

}


----------------------------------------------------------------

HERETIC.COMBOS =
{
  ---- INDOOR ------------

  GOLD =
  {
    theme_probs = { CITY=20, EGYPT=20 },
    mat_pri = 6,

    wall  = "SANDSQ2",
    floor = "FLOOR06",
    ceil  = "FLOOR11",

--  void = "SNDBLCKS",
    pillar = "SNDCHNKS",

    scenery = "wall_torch",

    wall_fabs = { wall_pic_GLASS1=30, wall_pic_GLASS2=15, other=10 },
  },

  BLOCK =
  {
    theme_probs = { CITY=20 },
    mat_pri = 7,

    wall  = "GRSTNPB",
    floor = "FLOOR03",
    ceil  = "FLOOR03",

    void = "GRSTNPBW",
    pillar = "WOODWL",

    scenery = "barrel",

  },

  MOSSY =
  {
    theme_probs = { CITY=20, DOME=20 },
    mat_pri = 2,

    wall  = "MOSSRCK1",
    floor = "FLOOR00",
    ceil  = "FLOOR04",

    pillar = "SKULLSB1", -- SPINE1

    scenery = "chandelier",

  },

  WOOD =
  {
    theme_probs = { CITY=20, EGYPT=20 },
    mat_pri = 2,

    wall  = "WOODWL",
    floor = "FLOOR10",
    ceil  = "FLOOR12",

--  void = "CTYSTUC3",

    scenery = "hang_skull_1",

  },

  HUT =
  {
    theme_probs = { CITY=20, DOME=20 },
    mat_pri = 1,
    
    wall  = "CTYSTUC3",
    floor = "FLOOR10",
    ceil  = "FLOOR11",

--  void = "CTYSTUC4",

    scenery = "barrel",

  },

  DISCO1 = 
  {
    theme_probs = { EGYPT=20 },
    mat_pri = 1,
    
    wall  = "SPINE2",
    floor = "FLAT522",
    ceil  = "FLOOR06",
    step  = "SNDBLCKS",

--  void = "CTYSTUC4",

  },
 
  --- Grey-walls, pink/brown floors 
  DISCO2 = 
  {
    theme_probs = { DOME=20 },
    mat_pri = 1,
    
    wall  = "SQPEB1",
    floor = "FLAT522",
    ceil  = "FLOOR06",
    step  = "SPINE2",

--  void = "CTYSTUC4",

  },
  
  PYRAMID =
  {
    theme_probs = { EGYPT=20 },
    mat_pri = 1,
    
    wall  = "SNDPLAIN",
    floor = "FLOOR27",
    ceil  = "FLOOR10",
    step  = "SPINE2",

--  void = "CTYSTUC4",

  },

  PHAROAH =
  {
    theme_probs = { EGYPT=15 },
    mat_pri = 1,
    
    wall  = "TRISTON2",
    floor = "FLAT522",
    ceil  = "FLOOR20",
    step  = "SQPEB2",

--  void = "CTYSTUC4",

  },

  PARLOR =
  {
    theme_probs = { EGYPT=15 },
    mat_pri = 1,
    
    wall  = "SQPEB2",
    floor = "FLOOR06",
    ceil  = "FLOOR06",
    step  = "SQPEB2",

--  void = "CTYSTUC4",

    scenery = "wall_torch",
  },

  SBLOCK =
  {
    theme_probs = { EGYPT=20 },
    mat_pri = 1,
    
    wall  = "SNDBLCKS",
    floor = "FLOOR27",
    ceil  = "FLOOR10",
    step  = "SPINE2",

--  void = "CTYSTUC4",

  },


  CAVE1 = 
  {
    theme_probs = { CAVE=20 },
    mat_pri = 1,
    wall = "LOOSERCK",
    floor = "FLAT516",
    ceil = "FLOOR01",

    scenery = "stal_big_C",
 
  }, 

  CAVE2 = 
  {
    theme_probs = { CAVE=20 },
    mat_pri = 1,
    wall = "LAVA1",
    floor = "FLAT516",
    ceil = "FLAT506",

    scenery = "stal_small_C",
 
  }, 

  CAVE3 =  -- Muddy walls, but one of the few outdoor textures
  {
    theme_probs = { CAVE=20, EGYPT=10 },
    mat_pri = 1,
    wall = "BRWNRCKS",
    floor = "FLOOR01",
    ceil = "FLAT516",

    scenery = "stal_small_C",
 
  }, 

  PURPLE =
  {
    theme_probs = { GARISH=20 },
    mat_pri = 1,

    wall  = "BLUEFRAG",
    floor = "FLOOR07",
    ceil  = "FLOOR07",

--  void = "CTYSTCI4",

  },

  BLUE =
  {
    theme_probs = { GARISH=20 },
    mat_pri = 1,

    wall  = "MOSAIC1",
    floor = "FLAT502",
    ceil  = "FLOOR16",

--  void = "CTYSTCI4",

  },

--- The greens don't look that great in Heretic
  GREEN =
  {
    theme_probs = { UNUSED=20 },
    mat_pri = 1,

    wall  = "GRNBLOK1",
    floor = "FLAT513",
    ceil  = "FLOOR18",

--  void = "CTYSTCI4",

  },

  ICE =
  {
    theme_probs = { GARISH=20 },
    mat_pri = 1,

    wall  = "STNGLS1",
    floor = "FLAT502",
    ceil  = "FLAT517",

--  void = "CTYSTCI4",

  },

  ROOT =
  {
    theme_probs = { CAVE=15 },
    mat_pri = 1,

    wall  = "ROOTWALL",
    floor = "FLAT506",
    ceil  = "FLAT506",

--  void = "CTYSTCI4",

  },

  ---- OUTDOOR ------------

  CAVEO1 = 
  {
    theme_probs = { CAVE=20 },
    mat_pri = 2,
    outdoor = true,
    wall = "LOOSERCK",
    floor = "FLAT516",
    ceil = "FLOOR01",

    scenery = "stal_big_F",
 
  }, 

  CAVEO2 = 
  {
    theme_probs = { CAVE=20 },
    mat_pri = 2,
    outdoor = true,
    wall = "LAVA1",
    floor = "FLAT516",
    ceil = "FLAT506",

    scenery = "stal_small_F",
 
  }, 

  CAVEMUD = 
  {
    theme_probs = { CAVE=15 },
    mat_pri = 2,
    outdoor = true,
    wall = "RCKSNMUD",
    floor = "FLAT510",
    ceil = "FLAT510",

    scenery = "stal_small_F",
 
  }, 


  --- Looks obnoxious outdoors; disabled
  ROOTO =
  {
    theme_probs = { UNUSED=15 },
    mat_pri = 2,
    outdoor = true,

    wall  = "ROOTWALL",
    floor = "FLAT506",
    ceil  = "FLAT506",

--  void = "CTYSTCI4",

  },


  ODISCO1 = 
  {
    theme_probs = { EGYPT=20 },
    mat_pri = 1,
    outdoor = true,
    
    wall  = "SPINE2",
    floor = "FLAT522",
    ceil  = "FLOOR06",
    step  = "SNDBLCKS",

--  void = "CTYSTUC4",

  },

  
  ODISCO2 = 
  {
    theme_probs = { DOME=20 },
    mat_pri = 1,
    outdoor = true,
    
    wall  = "SQPEB1",
    floor = "FLAT522",
    ceil  = "FLOOR06",
    step  = "SPINE2",

--  void = "CTYSTUC4",

  },

  PYRAMIDO =
  {
    theme_probs = { EGYPT=20 },
    mat_pri = 1,
    outdoor = true,
    
    wall  = "SNDPLAIN",
    floor = "FLOOR27",
    ceil  = "FLOOR27",
    step  = "SPINE2",

--  void = "CTYSTUC4",

  },

  PHAROAHO =
  {
    theme_probs = { EGYPT=15 },
    mat_pri = 1,
    outdoor = true,
    
    wall  = "TRISTON2",
    floor = "FLAT521",
    ceil  = "FLAT503",
    step  = "SQPEB2",

--  void = "CTYSTUC4",

  },
  
  WATER =
  {
    theme_probs = { GARISH=20 },
    outdoor = true,
    mat_pri = 1,

    wall  = "WATRWAL1",
    floor = "FLTWAWA1",
    ceil  = "FLTWAWA1",

--  void = "CTYSTCI4",

    liquid_prob = 0,
  },

  PURPLEO =
  {
    theme_probs = { GARISH=20 },
    outdoor = true,
    mat_pri = 1,

    wall  = "REDWALL",
    floor = "FLOOR07",
    ceil  = "FLOOR07",

--  void = "CTYSTCI4",

  },

  GREENO =
  {
    theme_probs = { UNUSED=20 },
    outdoor = true,
    mat_pri = 1,

    wall  = "GRNBLOK1",
    floor = "FLOOR18",
    ceil  = "FLOOR18",

--  void = "CTYSTCI4",

  },

  STONY =
  {
    theme_probs = { CITY=20 },
    outdoor = true,
    mat_pri = 3,

    wall  = "GRSTNPB",
    floor = "FLOOR00",
    ceil  = "FLOOR00",

--  void = "GRSTNPBV",
    scenery = "serpent_torch",
  },

  MUDDY =
  {
    theme_probs = { CITY=20, DOME=20 },
    outdoor = true,
    mat_pri = 3,

    wall  = "CSTLRCK",
    floor = "FLOOR17",
    ceil  = "FLOOR17",

--  void = "SQPEB1",
    pillar = "SPINE1",

    scenery = "fire_brazier",

  },
  
  SANDZ =
  {
    theme_probs = { EGYPT=20 },
    outdoor = true,
    mat_pri = 1,

    wall  = "SNDBLCKS",
    floor = "FLOOR27",
    ceil  = "FLOOR27",

--  void = "CTYSTCI4",

    liquid_prob = 0,
  },

  SANDY =
  {
    theme_probs = { CITY=20, DOME=20 },
    outdoor = true,
    mat_pri = 2,
    
    wall  = "CTYSTUC2",
    floor = "FLOOR27",
    ceil  = "FLOOR27",

--  void = "CTYSTUC3",
    pillar = "SPINE2",

    scenery = "small_pillar",
  },
  
}


HERETIC.EXITS =
{
  exit_pillar =
  {
    h=128, switch_w="SW2OFF",
  },

--[[
  METAL =
  {
    mat_pri = 9,

    wall  = "METL2",
    floor = "FLOOR03",
    ceil  = "FLOOR19",

    switch =
    {
      prefab="SWITCH_NICHE_TINY_DEEP",
      add_mode="wall",
      skin =
      {
        switch_w="SW2OFF", wall="METL2",
--      switch_f="FLOOR28",

        switch_h=32, x_offset=16, y_offset=48,
        kind=11, tag=0,
      }
    },
  },
  BLOODY = -- name hardcoded in planner.lua for secret exit
  {
    secret_exit = true,
    mat_pri = 9,

    wall  = "METL2",
    floor = "FLOOR03",
    ceil  = "FLOOR19",

    switch =
    {
      prefab="SWITCH_NICHE_TINY_DEEP",
      add_mode="wall",
      skin =
      {
        switch_w="SW1OFF", wall="METL2",
--      switch_f="FLOOR28",

        switch_h=32, x_offset=16, y_offset=48,
        kind=51, tag=0,
      }
    },
  },
--]]
}

HERETIC.HALLWAYS =
{
 
  -- Hall with set stone walls 
  RCKHALL = {
        mat_pri = 0,
	theme_probs = { CITY=20, DOME=20 },
    	wall = "GRSTNPB",
	void = "GRSTNPB",
    	step  = "GRSTNPB",
	pillar = "WOODWL",
	
    floor = "FLOOR03",
    ceil  = "FLOOR03",
	
  },

  -- Hall with natural stone walls
  STHALL = {
        mat_pri = 0,
	theme_probs = { CITY=20, CAVE=20 },
    	wall = "LOOSERCK",
	void = "LOOSERCK",
    	step  = "GRSTNPB",
	pillar = "GRSTNPB",
	
    floor = "FLOOR00",
    ceil  = "FLOOR00",
	
  },

  -- Hall with roots on the walls
  RTHALL = {
        mat_pri = 0,
	theme_probs = { CAVE=20 },
    	wall = "ROOTWALL",
	void = "ROOTWALL",
    	step  = "ROOTWALL",
	pillar = "ROOTWALL",
	
    floor = "FLAT506",
    ceil  = "FLAT506",
	
  },

  -- Hall with sandy walls
  SDHALL = {
        mat_pri = 0,
	theme_probs = { EGYPT=20 },
    	wall = "SNDPLAIN",
	void = "SNDPLAIN",
    	step  = "SPINE2",
	pillar = "SPINE2",
	
    floor = "FLOOR27",
    ceil  = "FLOOR10",
	
  },

  -- Hall with wooden walls
  WDHALL = {
        mat_pri = 0,
	theme_probs = { CITY=20, EGYPT=20 },
    	wall = "SQPEB2",
	void = "SQPEB2",
    	step  = "SQPEB2",
	pillar = "SQPEB2",
	
    floor = "FLOOR06",
    ceil  = "FLOOR06",
	
  },

  -- Garish blue watery hall
  WHALL = {
        mat_pri = 0,
	theme_probs = { GARISH=20, DOME=20 },
    	wall = "MOSAIC1",
	void = "MOSAIC1",
    	step  = "WATRWAL1",
	pillar = "WATRWAL1",
	
    floor = "FLTWAWA1",
    ceil  = "FLAT502",
	
  }
}




--- PEDESTALS --------------

HERETIC.PEDESTALS =
{
  PLAYER =
  {
    wall  = "CTYSTCI4", void = "CTYSTCI4",
    floor = "FLOOR11",   ceil = "FLOOR11",
    h = 8,
  },

  QUEST = -- FIXME
  {
    wall  = "CTYSTCI4", void = "CTYSTCI4",
    floor = "FLOOR11",   ceil = "FLOOR11",
    h = 8,
  },

  WEAPON = -- FIXME
  {
    wall  = "CTYSTCI4", void = "CTYSTCI4",
    floor = "FLOOR11",  ceil = "FLOOR11",
    h = 8,
  },
}

---- OVERHANGS ------------

HERETIC.OVERHANGS =
{
  WOOD =
  {
    ceil = "FLOOR10",
    upper = "CTYSTUC3",
    thin = "WOODWL",
  },
}

---- MISC STUFF ------------

HERETIC.LIQUIDS =
{
  water  = { mat="FLTFLWW1", light=0.65, sec_kind=16 },
  lava   = { mat="FLATHUH1", light=0.75, sec_kind=16 },
  magma  = { mat="FLTLAVA1", light=0.65, sec_kind=16 },
  sludge = { mat="FLTSLUD1", light=0.65, sec_kind=16 },
}

HERETIC.SWITCHES =
{
  sw_demon =
  {
    switch =
    {
      prefab = "SWITCH_NICHE_TINY",
      add_mode = "island",
      skin =
      {
        wall="GRSKULL1",
        switch_w="SW1OFF", switch_h=32,
        x_offset=16, y_offset=48, kind=103,
      }
    },

    door =
    {
      w=128, h=128,
      prefab = "DOOR",
      skin =
      {
        door_w="DMNMSK", door_c="FLOOR10",
        track_w="METL2",
        door_h=128,
        door_kind=0, tag=0,
      }
    },
  },

  sw_celtic =
  {
    switch =
    {
      prefab="SWITCH_NICHE_TINY",
      add_mode = "island",
      skin =
      {
        wall="CELTIC",
        switch_w="SW1OFF", switch_h=32,
        x_offset=16, y_offset=48, kind=103,
      }
    },

    door =
    {
      w=128, h=128,
      prefab = "DOOR",
      skin =
      {
        door_w="CELTIC", door_c="FLAT522",
        track_w="METL2",
        door_h=128,
        door_kind=0, tag=0,
      }
    },
  },

  sw_green =
  {
    switch =
    {
      prefab = "SWITCH_NICHE_TINY",
      add_mode = "island",
      skin =
      {
        wall="GRNBLOK1",
        switch_w="SW1OFF", switch_h=32,
        x_offset=16, y_offset=48, kind=103,
      }
    },

    door =
    {
      w=128, h=128,
      prefab = "DOOR",
      skin =
      {
        door_w="GRNBLOK4", door_c="FLOOR18",
        track_w="METL2",
        door_h=128,
        door_kind=0, tag=0,
      }
    },
  },
}


HERETIC.DOORS =
{
  d_demon =
  {
    w=128, h=128, door_h=128,
    door_w="DMNMSK", door_c="FLOOR10",
    step_w="METL2", track="METL2",
    key_ox=20, key_oy=-16,
    line_kind=1, tag=0,
  },

  d_wood =
  {
    w=128, h=128, door_h=128,
    door_w="DOORWOOD", door_c="FLOOR01",
    step_w="METL2", track="METL2",
    key_ox=20, key_oy=-16,
    line_kind=1, tag=0,
  },


--[[
  d_demon = { prefab="DOOR", w=128, h=128,

               skin =
               {
                 door_w="DMNMSK", door_c="FLOOR10",
                 track_w="METL2",
                 door_h=128,

---              lite_w="LITE5", step_w="STEP1",
---              frame_f="FLAT1", frame_c="TLITE6_6",
               }
             },
  
 d_wood   = { wall="DOORWOOD", w=64,  h=128, ceil="FLOOR10" },
  
--  d_stone  = { wall="DOORSTON", w=64,  h=128 },
--]]


  -- LOCKED DOORS --

  k_blue =
  {
    w=128, h=128, door_h=128, 

    door_w="DOORSTON", door_c="FLOOR28",
    track="METL2",
    frame_f="FLOOR04",
    line_kind=32, tag=0,  -- kind_rep=26

    statue = "blue_statue",
  },

  k_green =
  {
    w=128, h=128, door_h=128,

    door_w="DOORSTON", door_c="FLOOR28",
    track="METL2",
    frame_f="FLOOR04",
    line_kind=33, tag=0, -- kind_rep=28,

    statue = "green_statue",
  },

  k_yellow =
  {
    w=128, h=128, door_h=128,

    door_w="DOORSTON", door_c="FLOOR28",
    track="METL2",
    frame_f="FLOOR04",
    line_kind=34, tag=0, -- kind_rep=27,

    statue = "yellow_statue",
  },
}


HERETIC.LIFTS =
{
  slow = { kind=62,  walk=88 },
}

HERETIC.DOOR_PREFABS =  -- NB: OBSOLETE
{
  d_wood =
  {
    w=128, h=128, prefab="DOOR",

    skin =
    {
      door_w="DOORWOOD", door_c="FLOOR10",
      track="METL2", frame_f="FLOOR04",
      step_w="CHAINSD", key_w="CHAINSD",
      door_h=128,
      line_kind=1, tag=0,
    },

  theme_probs = { CITY=20 },
  },
}

HERETIC.WALL_PREFABS =
{
  wall_pic_GLASS1 =
  {
    prefab = "WALL_PIC_SHALLOW",
    min_height = 160,
    skin = { pic_w="STNGLS1", pic_h=128 },
  },

  wall_pic_GLASS2 =
  {
    prefab = "WALL_PIC_SHALLOW",
    min_height = 160,
    skin = { pic_w="STNGLS2", pic_h=128 },
  },
}

HERETIC.MISC_PREFABS =
{
  pedestal_PLAYER =
  {
    prefab = "PEDESTAL",
    skin = { wall="TMBSTON2", floor="FLOOR26", ped_h=8 },
  },

  pedestal_ITEM =
  {
    prefab = "PEDESTAL",
    skin = { wall="SAINT1", floor="FLAT500", ped_h=12 },
  },

  image_1 =
  {
    prefab = "CRATE",
    add_mode = "island",
    skin = { crate_h=64, crate_w="CHAINSD", crate_f="FLOOR27" },
  },

  image_2 =
  {
    prefab = "WALL_PIC_SHALLOW",
    add_mode = "wall",
    min_height = 144,
    skin = { pic_w="GRSKULL2", pic_h=128 },
  },

  exit_DOOR =
  {
    w=64, h=96, prefab = "DOOR_NARROW",

    skin =
    {
      door_w="DOOREXIT",
      door_h=96,
      door_kind=1, tag=0,
    },
  },

  secret_DOOR =
  {
    w=128, h=128, prefab = "DOOR",

    skin =
    {
      track_w="METL2",
      door_h=128, door_kind=31, tag=0
    },
  },
}


HERETIC.IMAGES =
{
  { wall = "GRSKULL2", w=128, h=128, glow=true },
  { wall = "GRSKULL1", w=64,  h=64,  floor="FLOOR27" }
}

HERETIC.LIGHTS =
{
  round = { floor="FLOOR26",  side="ORNGRAY" },
}

HERETIC.WALL_LIGHTS =
{
  redwall = { wall="REDWALL", w=32 },
}

HERETIC.PICS =
{
  skull3 = { wall="GRSKULL3", w=128, h=128 },
  glass1 = { wall="STNGLS1",  w=128, h=128 },
}

---- QUEST STUFF ----------------


HERETIC.ROOMS =
{
  PLAIN =
  {
  },

  HALLWAY =
  {
    room_heights = { [96]=50, [128]=50 },
    door_probs   = { out_diff=75, combo_diff=50, normal=5 },
    window_probs = { out_diff=1, combo_diff=1, normal=1 },
    space_range  = { 20, 65 },
  },
 
  SCENIC =
  {
  },

  -- TODO: check in-game level names for ideas
}


HERETIC.SUB_THEME_DEFAULTS =
{
  steps = { step1=50 },

  doors = { d_wood=50, d_demon=15 },

  logos = { carve=50, pill=50 },

  exits = { exit_pillar=50 },

  keys = { k_yellow=50, k_green=50, k_blue=20 },

--FIXME TEMP STUFF
  cave_walls = { BRWNRCKS=10, LAVA1=20, LOOSERCK=20,
                 RCKSNMUD=20, ROOTWALL=30,
               },

  landscape_walls = { BRWNRCKS=10, LAVA1=20, LOOSERCK=20,
                      RCKSNMUD=20, ROOTWALL=10,
                    },

  periph_pillar_mat = "WOODWL",
  beam_mat = "WOODWL",
  track_mat = "METL2",
  pedestal_mat = "FLAT500",
}


HERETIC.SUB_THEMES =
{
  heretic_urban1 =
  {
    prob=50,

    liquids = { water=50, sludge=15, lava=4 },

    building_walls =
      {
        SANDSQ2=50, GRSTNPB=50, WOODWL=10,
        CTYSTUC4=80, CTYSTCI2=80, TRISTON2=20,
      },

    building_floors =
      {
        FLOOR06=50, FLOOR03=50, FLOOR00=50, FLOOR10=50,
      },

    building_ceilings =
      {
        FLOOR11=50, FLOOR03=30, FLOOR04=30, FLOOR12=50,
      },

    courtyard_floors =
      {
        FLOOR00=20, FLOOR17=50, FLOOR27=30, FLOOR18=50,
      },

    room_types =
    {
      -- FIXME
    },

    scenery =
    {
      -- FIXME
    },

    monster_prefs =
    {
    },
  }, -- CITY1


  heretic_gothic1 =
  {
    prob=50,

    liquids = { lava=50, magma=20, sludge=3 },

    building_walls =
      {
        CSTLRCK=50, GRNBLOK1=20, MOSSRCK1=20,
        SQPEB1=20, TRISTON1=20,
      },

    building_floors =
      {
        FLAT503=20, FLAT507=10, FLAT520=10, FLAT521=10,
        FLOOR00=10, FLOOR03=20, FLOOR07=10,
        FLAT523=20,
      },

    building_ceilings =
      {
        FLAT520=20, FLAT521=10, FLAT508=15,
        FLOOR20=25, FLOOR29=10,
      },

    courtyard_floors =
      {
        FLAT509=20, FLAT510=20, FLAT513=20,
        FLAT516=20, FLAT522=20,
      },

  }, -- GOTHIC1


  heretic_cave1 =  -- Keep this ???  Nope !
  {
    prob=50,

    building_walls = 
      {
        LOOSERCK=20, LAVA1=20, BRWNRCKS=20,
      },

    building_floors =
      {
        FLOOR01=20, FLAT516=20, FLAT516=20,
      },

    building_ceilings =
      {
        FLOOR01=20, FLAT516=20, FLAT506=20,
      },

    courtyard_floors =
      {
        LOOSERCK=50, RCKSNMUD=50, LAVA1=50,
        FLAT516=50, FLAT510=50, FLAT516=50,
      },

  }, -- CAVE1


--[[ FIXME: good old stuff

  --- City (E1 Castle) is both indoors and outdoors
  CITY =
  {
    room_probs=
    {
      PLAIN=50,
    },
    has_outdoors = true,
  },
  --- Cave (used in Hell) is both outdoors and indoors
  CAVE =
  {
    room_probs=
    {
      PLAIN=50,
    },
    has_outdoors = true,
  },
  --- Dome is a variation on City used in E3
  DOME =
  {
    room_probs=
    {
      PLAIN=50,
    },
    has_outdoors = true,
  },
  --- Egypt is a sandy-looking theme used in E4
  EGYPT =
  {
    room_probs=
    {
      PLAIN=50,
    },
    has_outdoors = true,
  },
  --- Garish is a surrealistic very garish theme of blue and some red;
  --- used in E5
  GARISH =
  {
    room_probs=
    {
      PLAIN=50,
    },
    has_outdoors = true,
  },

--]]
}


------------------------------------------------------------

HERETIC.MONSTERS =
{
  gargoyle =
  {
    prob=30,
    health=20, damage=5, attack="melee",
    float=true,
  },

  fire_garg =
  {
    prob=10,
    health=80, damage=8, attack="missile",
    float=true,
  },

  mummy =
  {
    prob=60,
    health=80, damage=8, attack="melee",
    give={ {ammo="crystal",count=1} },
  },

  mummy_inv =
  {
    replaces="mummy", replace_prob=15,
    health=80, damage=8, attack="melee",
    give={ {ammo="crystal",count=1} },
    invis=true,
  },

  sabreclaw =  -- MT_CLINK
  {
    prob=25,
    health=150, damage=12, attack="melee",
    give={ {ammo="rune",count=6} },
  },

  knight =
  {
    prob=70,
    health=200, damage=12, attack="missile",
    give={ {ammo="arrow",count=1.6} },
  },

  knight_inv =
  {
    replaces="knight", replace_prob=15,
    health=200, damage=14, attack="missile",
    give={ {ammo="arrow",count=1.6} },
    invis=true,
  },

  leader =
  {
    prob=70,
    health=100, damage=16, attack="missile",
    give={ {ammo="crystal",count=1} },
  },

  leader_inv =
  {
    replaces="leader", replace_prob=15,
    health=100, damage=16, attack="missile",
    give={ {ammo="crystal",count=1} },
    invis=true,
  },

  disciple =  -- MT_WIZARD
  {
    prob=25,
    health=180, damage=20, attack="missile",
    give={ {ammo="claw_orb",count=3} },
    float=true,
  },

  weredragon =  -- MT_BEAST
  {
    prob=30,
    health=220, damage=25, attack="missile",
    give={ {ammo="arrow",count=3} },
  },

  ophidian =  -- MT_SNAKE
  {
    prob=30,
    health=280, damage=25, attack="missile",
    give={ {ammo="flame_orb",count=1.6} },
  },


  ---| HERETIC BOSSES |---

  -- FIXME: damage values are crap, need 'attack' type

  Ironlich =  -- MT_HEAD
  {
    health=700, damage=60,
    give={ {ammo="claw_orb",count=3} },
    float=true,
  },

  Maulotaur =
  {
    health=3000, damage=80,
    give={ {ammo="flame_orb",count=3},
           {health=10} },  -- occasionally drops an Urn
  },

  D_Sparil =
  {
    health=2000, damage=100,
  },

  -- NOTES
  --
  -- Most monsters who drop an item after death only do so 33%
  -- of the time (randomly).  The give amounts are therefore
  -- just an average.  Some of them also (but rarely) drop
  -- artifacts (egg/tome) -- this is not modelled.
}


HERETIC.WEAPONS =
{
  staff =
  {
    rate=2.5, damage=12, attack="melee",
  },

  wand =
  {
    pref=10,
    rate=3.1, damage=10, attack="hitscan",
    ammo="crystal", per=1,
  },

  gauntlets =
  {
    pref=10, add_prob=5, start_prob=10,
    rate=5.2, damage=8, attack="melee",
  },

  crossbow =
  {
    pref=90, add_prob=10, start_prob=70,
    rate=1.3, damage=20, attack="missile", splash={0,5},
    ammo="arrow", per=1,
    give={ {ammo="arrow",count=10} },
  },

  claw =  -- aka blaster
  {
    pref=60, add_prob=20, start_prob=20,
    rate=2.9, damage=16, attack="missile",
    ammo="claw_orb", per=1,
    give={ {ammo="claw_orb",count=30} },
  },

  hellstaff =  -- aka skullrod
  {
    pref=50, add_prob=20, start_prob=5,
    rate=8.7, damage=12, attack="missile",
    ammo="rune", per=1,
    give={ {ammo="rune",count=50} },
  },

  phoenix =
  {
    pref=50, add_prob=20, start_prob=5,
    rate=1.7, damage=80, attack="missile",
    ammo="flame_orb", per=1,
    give={ {ammo="flame_orb",count=2} },
  },

  firemace =
  {
    pref=35, add_prob=20, start_prob=5,
    rate=8.7, damage=8, attack="missile",
    ammo="mace_orb", per=1,
    give={ {ammo="mace_orb",count=50} },
  },

  -- NOTES:
  --
  -- No information here about weapons when the Tome-Of-Power is
  -- being used (such as different firing rates and ammo usage).
  -- Since that artifact can be used at any time by the player,
  -- OBLIGE cannot properly model it.
  --
  -- The Firemace can be placed in upto 8 different spots, but
  -- only one is spawned (at a spot chosen randomly) when the
  -- level is loaded.
}


HERETIC.PICKUPS =
{
  -- HEALTH --

  h_vial =
  {
    prob=70, cluster={ 1,4 },
    give={ {health=10} },
  },

  h_flask =
  {
    prob=25,
    give={ {health=25} },
  },

  h_urn =
  {
    -- could actually give upto 99 health points, but the player
    -- will usually waste a lot of it (since their health is
    -- limited to 100).
    prob=5,
    give={ {health=70} },
  },


  -- ARMOR --

  shield1 =
  {
    prob=20,
    give={ {health=50} },
  },

  shield2 =
  {
    prob=5,
    give={ {health=100} },
  },


  -- AMMO --

  crystal =
  {
    prob=20, cluster={ 1,4 },
    give={ {ammo="crystal",count=10} },
  },

  geode =
  {
    prob=40,
    give={ {ammo="crystal",count=50} },
  },

  arrow =
  {
    prob=20, cluster={ 1,3 },
    give={ {ammo="arrow",count=5} },
  },

  quiver =
  {
    prob=40,
    give={ {ammo="arrow",count=20} },
  },

  claw_orb1 =
  {
    prob=20, cluster={ 1,3 },
    give={ {ammo="claw_orb",count=10} },
  },

  claw_orb2 =
  {
    prob=40,
    give={ {ammo="claw_orb",count=25} },
  },

  runes1 =
  {
    prob=20, cluster={ 1,4 },
    give={ {ammo="rune",count=20} },
  },

  runes2 =
  {
    prob=40,
    give={ {ammo="rune",count=100} },
  },

  flame_orb1 =
  {
    prob=20, cluster={ 2,5 },
    give={ {ammo="flame_orb",count=1} },
  },

  flame_orb2 =
  {
    prob=40,
    give={ {ammo="flame_orb",count=10} },
  },

  mace_orb1 =
  {
    prob=20, cluster={ 1,4 },
    give={ {ammo="mace_orb",count=20} },
  },

  mace_orb2 =
  {
    prob=40,
    give={ {ammo="mace_orb",count=100} },
  },
}


HERETIC.ITEMS =
{
  p1 = { pickup="torch", prob=2.0 },
}


HERETIC.PLAYER_MODEL =
{
  cleric =
  {
    stats = { health=0, crystal=0, arrow=0, rune=0,
              claw_orb=0, flame_orb=0, mace_orb=0 },
    weapons = { staff=1, wand=1 },
  }
}


------------------------------------------------------------

HERETIC.EPISODES =
{
  episode1 =
  {
    boss = "Ironlich",
    theme = "CITY",
    sky_light = 0.65,
    secret_exits = { "E1M6" },
  },

  episode2 =
  {
    boss = "Maulotaur",
    theme = "CITY",
    sky_light = 0.75,
    secret_exits = { "E2M4" },
  },

  episode3 =
  {
    boss = "D_sparil",
    theme = "CITY",
    sky_light = 0.75,
    secret_exits = { "E3M4" },
  },

  episode4 =
  {
    boss = "Ironlich",
    theme = "CITY",
    sky_light = 0.50,
    secret_exits = { "E4M4" },
  },

  episode5 =
  {
    boss = "Maulotaur",
    theme = "CITY",
    sky_light = 0.65,
    secret_exits = { "E5M3" },
  },
}


------------------------------------------------------------

function Heretic_setup()

  -- FIXME: temp crap
  GAME.materials["NUKAGE1"] = GAME.materials["FLTSLUD1"]
end


function Heretic_get_levels()
  local EP_NUM  = sel(OB_CONFIG.length == "full", 5, 1)
  local MAP_NUM = sel(OB_CONFIG.length == "single", 1, 9)

  if OB_CONFIG.length == "few" then MAP_NUM = 4 end

  for episode = 1,EP_NUM do
    local ep_info = HERETIC.EPISODES["episode" .. episode]
    assert(ep_info)

    for map = 1,MAP_NUM do
      local LEV =
      {
        name = string.format("E%dM%d", episode, map),

        episode  = episode,
        ep_along = map / MAP_NUM,
        ep_info  = ep_info,

        keys = { foo=50 },
        switches = { foo=50 },
        bars = { },
      }

      table.insert(GAME.all_levels, LEV)
    end -- for map

  end -- for episode
end


function Heretic_make_cool_gfx()
  local GREEN =
  {
    0, 209, 211, 213, 215, 217, 218
  }

  local BROWN =
  {
    0, 66, 68, 70, 73, 76, 79, 82, 86, 90
  }

  local RED =
  {
    0, 251, 253, 145, 147, 149, 151, 153, 155, 157
  }

  local WHITE =
  {
    0,2,4,6,8,10,12, 14,16,18,20,22,24
  }

  local BLUE =
  {
    0, 185, 187, 189, 191, 194, 197, 199, 202
  }


  local colmaps =
  {
    GREEN, BROWN, RED, BLUE
  }

  rand.shuffle(colmaps)

  gui.set_colormap(1, colmaps[1])
  gui.set_colormap(2, colmaps[2])
  gui.set_colormap(3, colmaps[3])
  gui.set_colormap(4, WHITE)

  local carve = "RELIEF"
  local c_map = 3

  if rand.odds(33) then
    carve = "CARVE"
    c_map = 4
  end

  -- patches : SKULLSB2, CHAINSD
  gui.wad_logo_gfx("WALL41", "p", "PILL",  128,128, 1)
  gui.wad_logo_gfx("WALL42", "p", carve,    64,128, c_map)

  -- flats
  gui.wad_logo_gfx("O_BOLT",  "f", "BOLT",  64,64, 2)
  gui.wad_logo_gfx("O_PILL",  "f", "PILL",  64,64, 1)
  gui.wad_logo_gfx("O_CARVE", "f", carve,   64,64, c_map)
end


function Heretic_begin_level()
  -- set the description here
  if not LEVEL.description and LEVEL.name_theme then
    LEVEL.description = Naming_grab_one(LEVEL.name_theme)
  end
end


function Heretic_all_done()
  Heretic_make_cool_gfx()
end


------------------------------------------------------------

OB_THEMES["heretic_urban"] =
{
  label = "Urban",
  for_games = { heretic=1 },

  name_theme = "URBAN",
  mixed_prob = 50,
}

OB_THEMES["heretic_gothic"] =  -- castles
{
  label = "Gothic",
  for_games = { heretic=1 },

  name_theme = "GOTHIC",
  mixed_prob = 50,
}

UNFINISHED["heretic_cave"] =
{
  label = "Cave",
  for_games = { heretic=1 },

  name_theme = "URBAN",
  mixed_prob = 30,
}


OB_GAMES["heretic"] =
{
  label = "Heretic",

  hooks =
  {
    setup = Heretic_setup,
    levels_start = Heretic_get_levels,
    begin_level = Heretic_begin_level,
    all_done = Heretic_all_done,
  },

  param =
  {
    format = "doom",

    rails = true,
    switches = true,
    liquids = true,
    teleporters = true,
    infighting  =  true,
    prefer_stairs = true,
    noblaze_door = true,

    custom_flats = true,

    seed_size = 192,

    max_name_length = 28,

    skip_monsters = { 20,30 },

    time_factor   = 1.0,
    damage_factor = 1.0,
    ammo_factor   = 0.8,
    health_factor = 0.7,
  },

  tables =
  {
    "player_model", HERETIC.PLAYER_MODEL,
    
    "things",   HERETIC.THINGS,
    "monsters", HERETIC.MONSTERS,
    "weapons",  HERETIC.WEAPONS,
    "pickups",  HERETIC.PICKUPS,

    "materials", HERETIC.MATERIALS,
    "rails",     HERETIC.RAILS,
    "liquids",   HERETIC.LIQUIDS,

    "steps",     HERETIC.STEPS,
    "pictures",  HERETIC.PICTURES,
    "doors",     HERETIC.DOORS,
    "exits",     HERETIC.EXITS,

    "sub_themes", HERETIC.SUB_THEMES,
    "sub_defaults", HERETIC.SUB_THEME_DEFAULTS,
    "rooms",    HERETIC.ROOMS,

    "switches", HERETIC.SWITCHES,
    "lifts",    HERETIC.LIFTS,
  },
}

