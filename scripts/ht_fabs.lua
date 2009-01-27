----------------------------------------------------------------
--  Height/Liquid Fabs
----------------------------------------------------------------
--
--  Oblige Level Maker (C) 2008 Andrew Apted
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


HEIGHT_FABS =
{
  I1 =
  {
    structure =
    {
      "111",
      ".^.",
      "...",
    },

    x_sizes =
    {
      "111", "212", "313", "414", "515", "616",
    },

    y_sizes =
    {
      -- "011",
      "012", "013",
      "112", "113", "114", "115", "116", "117",
      "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "315", "316", "317", "318", "319",
    },

    subs =
    {
      { height=1 },
    },

    symmetry = "x",
  },

  I1_b =
  {

    structure =
    {
      "111",
      "^.^",
      "...",
    },

    x_sizes =
    {
      "111", "121", "131", "141", "151", "161", "171",
      "181", "191",
    },

    y_sizes =
    {
      "012", "013",
      "112", "113", "114", "115", "116", "117",
      "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "315", "316", "317", "318", "319",
    },

    subs =
    {
      { height=1 },
    },

    symmetry = "x",
  },

--[[
  I2 =
  {

    structure =
    {
      ".....",
      "#^#^#",
      "#####",
    },

    x_sizes =
    {
      "11111", "11211", "11311", "11411", "11511",
      "11611", "11711", "11811", "11911",

      "21112", "21212", "21312", "21412",
      "21512", "21612", "21712",

      "31113", "31213", "31313", "31413", "31513",
      "41114", "41214", "41314",
      "51115",
    },

    y_sizes =
    {
      -- "011",
      "012", "013",
      "112", "113", "114", "115", "116", "117",
      "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "315", "316", "317", "318", "319",
    },

    symmetry = "x",
  },


  L1 =
  {

    structure =
    {
      "#..",
      "##^",
      "###",
    },

    x_sizes =
    {
      "111", "121", "131", "141", "151", "161",
      "221", "231", "241", "251", "261", "271", "281", "291", "2A1",
      "341", "351", "361", "371", "381", "391",
      "441", "461", "481",
    },

    y_sizes =
    {
      "011", "012", "013", "014",
      "112", "113", "114", "115", "116", "117", "118", "119", "11A",
      "214", "216", "217", "218", "219", "21A",
      "316", "317", "318", "319",
    },
  },

  L1_b =
  {

    structure =
    {
      "#..",
      "#^#",
      "###",
    },

    x_sizes =
    {
      "111", "112", "113", "114", "115", "116",
      "212", "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "315", "316", "317", "318", "319",
    },

    y_sizes =
    {
      "011", "012", "013", "014",
      "112", "113", "114", "115", "116", "117", "118", "119", "11A",
      "214", "216", "217", "218", "219", "21A",
      "316", "317", "318", "319",
    },
  },

  L2 =
  {
    prob = 20,


    structure =
    {
      "#>..",
      "##..",
      "###^",
      "####",
    },

    x_sizes =
    {
      "0111", "0121", "0131",
      "1111", "1121", "1131", "1141", "1151", "1161", "1171",
      "1181", "1191", "11A1",
      "2151", "2161", "2171", "2181", "2191",
    },

    y_sizes =
    {
      "0111", "0121", "0131",
      "1111", "1121", "1131", "1141", "1151",
      "1161", "1171", "1181", "1191",
      "2141", "2151", "2161", "2171", "2181", "2191",
      "3151", "3161", "3171", "3181",
    },
  },


  M1 =
  {

    structure =
    {
      "###",
      "##v",
      "...",
      "^##",
      "###",
    },

    x_sizes =
    {
      "111", "121", "131", "141", "151", "161", "171",
      "181", "191", "1A1", "1B1",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21612", "21712",
    },

    -- symmetry = "r",
  },

  M2 =
  {

    structure =
    {
      "#####",
      "###v#",
      ".....",
      "#^###",
      "#####",
    },

    x_sizes =
    {
      "11011", "11111", "11211", "11311", "11411",
      "11511", "11611", "11711", "11811", "11911",

      "21112", "21212", "21312", "21412",
      "21512", "21612", "21712",

      "31113", "31213", "31313", "31413", "31513",
      "41114", "41214", "41314",
      "51115",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21612", "21712",
    },

    symmetry = "R",
  },

  M3 =
  {
    prob = 20,


    structure =
    {
      "#####",
      "v###v",
      ".....",
      "##^##",
      "#####",
    },

    x_sizes =
    {
      "10101", "11111", "12121", "13131", "14141", "15151",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21612", "21712",
    },

    symmetry = "x",
  },

  M3_b =
  {
    prob = 10,


    structure =
    {
      "#####",
      "v###v",
      ".....",
      "^###^",
      "#####",
    },

    x_sizes =
    {
      "10101", "11111", "12121", "13131", "14141", "15151",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21612", "21712",
    },

    symmetry = "xy",
  },

  M3_c =
  {
    prob = 20,


    structure =
    {
      "#####",
      "#v#v#",
      ".....",
      "##^##",
      "#####",
    },

    x_sizes =
    {
      "11111", "21112", "31113", "41114", "51115",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21612", "21712",
    },

    symmetry = "x",
  },


  U1 =
  {

    structure =
    {
      "#>.<#",
      "##.##",
      "#####",
    },

    x_sizes =
    {
      "01210", "01310",
      "11211", "11311", "11411", "11511", "11611", "11711", "11811",
      "21412", "21512", "21612", "21712",
    },

    y_sizes =
    {
      "101", "111", "121", "131", "141", "151", "161", "171", "181",
      "221", "231", "241", "251", "261", "271", "281", "291", "2A1",
      "341", "361", "391",
    },

    symmetry = "x",
  },

  U1_b =
  {

    structure =
    {
      "##.##",
      "#>.<#",
      "#####",
    },

    x_sizes =
    {
      "01210", "01310",
      "11211", "11311", "11411", "11511", "11611", "11711", "11811",
      "21312", "21412", "21512", "21612", "21712",
    },

    y_sizes =
    {
      "111", "112", "113", "114", "115", "116", "117", "118",
      "212", "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "316", "319",
      "414", "416", "418",
    },

    symmetry = "x",
  },

  U2 =
  {

    structure =
    {
      "#...#",
      "##^##",
      "#####",
    },

    x_sizes =
    {
      "11111", "12121", "13131", "14141", "15151",
      "22122", "23132", "24142",
    },

    y_sizes =
    {
      "112", "113", "114", "115", "116", "117", "118",
      "212", "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "316", "319",
      "414", "416", "418",
    },

    symmetry = "x",
  },

  U2_b =
  {

    structure =
    {
      "#...#",
      "#^#^#",
      "#####",
    },

    x_sizes =
    {
      "11111", "11211", "11311", "11411", "11511",
      "11611", "11711", "11811",
      "21312", "21412", "21512", "21612", "21712",
    },

    y_sizes =
    {
      "112", "113", "114", "115", "116", "117", "118",
      "212", "213", "214", "215", "216", "217", "218", "219", "21A",
      "314", "316", "319",
      "414", "416", "418",
    },

    symmetry = "x",
  },
--]]

  O1 =
  {
    prob = 25,

    structure =
    {
      ".....",
      ".....",
      ".111.",
      "..^..",
      ".....",
    },

    x_sizes =
    {
      "11111", "12121", "13131", "14141", "15151",
      "22122", "23132", "24142",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510", "01610",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    subs =
    {
      { height=1 },
    },

    symmetry = "x",
    match_any = true,
    low_ceil = true,
  },

--[[
  O1_b =
  {

    structure =
    {
      "#####",
      "##v##",
      "#...#",
      "##^##",
      "#####",
    },

    x_sizes =
    {
      "11111", "12121", "13131", "14141", "15151",
      "22122", "23132", "24142",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510", "01610",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "xy",
    match_any = true,
    low_ceil = true,
  },

  O2 =
  {

    structure =
    {
      "#####",
      "###v#",
      "#...#",
      "#^###",
      "#####",
    },

    x_sizes =
    {
      "11111", "11211", "11311", "11411", "11511", "11611",
      "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510", "01610",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "R",
    match_any = true,
    low_ceil = true,
  },

  O2_b =
  {
    prob = 10,


    structure =
    {
      "#####",
      "#v#v#",
      "#...#",
      "#^#^#",
      "#####",
    },

    x_sizes =
    {
      "11111", "11211", "11311", "11411", "11511", "11611",
      "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510", "01610",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "xy",
    match_any = true,
    low_ceil = true,
  },

  O_DOUBLE_1 =
  {
    prob = 25,


    structure =
    {
      "#########",
      "######v##",
      "#...#:::#",
      "##^######",
      "#########",
    },

    x_sizes =
    {
      "101111101",
      "111010111",
      "111111111",
      "121111121",
      "111212111",
      "101414101",
      "121212121",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510", "01610",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "R",
    match_any = true,
    low_ceil = true,
  },

  O_DOUBLE_2 =
  {
    prob = 25,


    structure =
    {
      "#########",
      "##v###v##",
      "#...#:::#",
      "##^###^##",
      "#########",
    },

    x_sizes =
    {
      "101111101",
      "111010111",
      "111111111",
      "121111121",
      "111212111",
      "101414101",
      "121212121",
    },

    y_sizes =
    {
      "01210", "01310", "01410", "01510", "01610",
      "11311", "11411", "11511", "11611", "11711", "11811", "11911",
      "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "xy",
    match_any = true,
    low_ceil = true,
  },



  T1 =
  {

    structure =
    {
      "..#::",
      "#^#^#",
      "#####",
    },

    x_sizes =
    {
      "01110", "11111", "21112", "21212",
      "31113", "31213", "41114", "41214",
      "51115"
    },

    y_sizes =
    {
      "011", "012", "013", "014", "015", "016",
      "112", "113", "114", "115", "116", "117", "118", "119",
      "216", "217", "218", "219", "21A",
    },

    symmetry = "x",
  },
--]]

  T2 =
  {

    structure =
    {
      "11.22",
      "^...^",
      ".....",
    },

    x_sizes =
    {
      "11111",
      "12121", "12221",
      "13131", "13231",
      "14141", "14241",
      "15151"
    },

    y_sizes =
    {
      "011", "012", "013", "014", "015", "016",
      "112", "113", "114", "115", "116", "117", "118", "119",
      "216", "217", "218", "219", "21A",
    },

    subs =
    {
      { height=1 },
      { height=1 },
    },

    symmetry = "x",
  },

--[[
  T3 =
  {

    structure =
    {
      ".<:",
      ".#:",
      ".>:",
      "###",
    },

    x_sizes =
    {
      "212", "313", "414", "515", "616",
    },

    y_sizes =
    {
      "1101", "1111", "1121", "1131", "1141", "1151",
      "1161", "1171", "1181",
      "2141", "2151", "2161", "2171", "2181", "2191",
      "3171", "3181",
    },
  },

  T3_b =
  {

    structure =
    {
      ".#>:",
      ".##:",
      ".<#:",
      "####",
    },

    x_sizes =
    {
      "2112", "3113", "4114", "5115",
    },

    y_sizes =
    {
      "1101", "1111", "1121", "1131", "1141", "1151",
      "1161", "1171", "1181",
      "2141", "2151", "2161", "2171", "2181", "2191",
      "3171", "3181",
    },
  },

  T3_d =
  {
    prob = 10,


    structure =
    {
      ".<#>:",
      ".###:",
      "#####",
    },

    x_sizes =
    {
      "21012", "31013", "41014",
      "31113", "41114", "51115",
    },

    y_sizes =
    {
      "111", "121", "131", "141", "151",
      "161", "171", "181",
      "241", "251", "261", "271", "281", "291",
      "371", "381",
    },

    symmetry = "x",
  },

--]]

  H1 =
  {

    structure =
    {
      ".....",
      "...v.",
      "11.22",
      ".^...",
      ".....",
    },

    x_sizes =
    {
      "01110", "11111", "21112", "31113",
      "41114", "41214", "51115", "51215",
    },

    y_sizes =
    {
      "01110", "01210", "01410", "01510", "01610", "01710", "01810",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "R",

    subs =
    {
      { height=1 },
      { height=1 },
    },
  },

--[[
  H1_b =
  {
    prob = 20,


    structure =
    {
      "#####",
      "#v#v#",
      "..#::",
      "#^#^#",
      "#####",
    },

    x_sizes =
    {
      "01110", "11111", "21112", "31113",
      "41114", "41214", "51115", "51215",
    },

    y_sizes =
    {
      "01110", "01210", "01410", "01510", "01610", "01710", "01810",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "xy",
  },

  H2 =
  {

    structure =
    {
      "#####",
      "v####",
      "..#::",
      "####^",
      "#####",
    },

    x_sizes =
    {
      "10101", "11111", "12121", "13131",
      "14141", "14241", "15151", "15251",
    },

    y_sizes =
    {
      "01110", "01210", "01410", "01510", "01610", "01710", "01810",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "R",
  },

  H2_b =
  {
    prob = 20,


    structure =
    {
      "#####",
      "v###v",
      "..#::",
      "^###^",
      "#####",
    },

    x_sizes =
    {
      "10101", "11111", "12121", "13131",
      "14141", "14241", "15151", "15251",
    },

    y_sizes =
    {
      "01110", "01210", "01410", "01510", "01610", "01710", "01810",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "xy",
  },

  H3 =
  {

    structure =
    {
      "###",
      ".<:",
      ".#:",
      ".>:",
      "###",
    },

    x_sizes =
    {
      "212", "313", "414", "515", "616",
    },

    y_sizes =
    {
      "11111", "11211", "11311", "11411", "11511", "11611", "11711",
      "21212", "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "R",
  },

  H3_b =
  {

    structure =
    {
      "####",
      ".#>:",
      ".##:",
      ".<#:",
      "####",
    },

    x_sizes =
    {
      "2112", "3113", "4114", "5115",
    },

    y_sizes =
    {
      "11111", "11211", "11311", "11411", "11511", "11611", "11711",
      "21212", "21312", "21412", "21512", "21612", "21712",
    },

    symmetry = "R",
  },


  S1 =
  {

    structure =
    {
      "..###",
      "..#v#",
      "..#::",
      "#^#::",
      "###::",
    },

    x_sizes =
    {
      "01110", "11111", "21112", "31113",
      "41114", "41214", "51115", "51215",
    },

    y_sizes =
    {
      "01110", "01210", "01310", "01410", "01510",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "R",
  },

  S2 =
  {

    structure =
    {
      "..###",
      "..##v",
      "..#::",
      "^##::",
      "###::",
    },

    x_sizes =
    {
      "10101", "11111", "12121", "13131",
      "14141", "14241", "15151", "15251",
    },

    y_sizes =
    {
      "01110", "01210", "01410", "01510",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "R",
  },

  S2_b =
  {
    prob = 10,


    structure =
    {
      "..<##",
      "..##v",
      "..#::",
      "^##::",
      "##>::",
    },

    x_sizes =
    {
      "11111", "12121", "13131",
      "14141", "14241", "15151", "15251",
    },

    y_sizes =
    {
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "R",
  },

  S3 =
  {

    structure =
    {
      ".<#",
      ".##",
      ".#:",
      "##:",
      "#>:",
    },

    x_sizes =
    {
      "212", "313", "414", "515", "616",
      "323", "424", "525",
    },

    y_sizes =
    {
      "10101", "10201", "10301", "10401", "10501",
      "11411", "11511", "11611", "11711", "11811", "11911"
    },

    symmetry = "R",
  },

  S4 =
  {

    structure =
    {
      ".##",
      ".#:",
      ".<:",
      ".#:",
      ".>:",
      ".#:",
      "##:",
    },

    x_sizes =
    {
      "212", "313", "414", "515", "616",
      "323", "424", "525",
    },

    y_sizes =
    {
      "1011101", "1012101", "1013101", "1014101",
      "1111111", "1112111", "1113111", "1114111",
      "2111112", "2112112", "2113112", "2114112", "2115112",
    },

    symmetry = "R",
  },

  S4_b =
  {

    structure =
    {
      ".###",
      ".##:",
      ".<#:",
      ".##:",
      ".#>:",
      ".##:",
      "###:",
    },

    x_sizes =
    {
      "2112", "3113", "4114", "5115",
    },

    y_sizes =
    {
      "1011101", "1012101", "1013101", "1014101",
      "1111111", "1112111", "1113111", "1114111",
      "2111112", "2112112", "2113112", "2114112", "2115112",
    },

    symmetry = "R",
  },
--]]
}


----------------------------------------------------------------


SOLID_FABS =
{
  SOLID_A1 =
  {
    prob = 60,
    environment = "indoor",
    
    structure =
    {
      "...",
      ".S.",
      "...",
    },

    x_sizes = { "212", "313", "414", "323" },
    y_sizes = { "111", "212", "313" },

    symmetry = "xy",
  },

  SOLID_A2 =
  {
    prob = 40,
    environment = "indoor",
    
    structure =
    {
      ".....",
      ".S.S.",
      ".....",
    },

    x_sizes = { "11211", "21112", "21212", "21312" },
    y_sizes = { "212", "313" },

    symmetry = "xy",
  },

  SOLID_A3 =
  {
    prob = 20,
    environment = "indoor",
    
    structure =
    {
      ".....",
      ".S.S.",
      ".....",
      ".S.S.",
      ".....",
    },

    x_sizes = { "11111", "12121", "21212", "21312" },
    y_sizes = { "11111", "12121", "21212", "21312" },

    symmetry = "xy",
  },

  SOLID_C1 =
  {
    prob = 100,
    environment = "indoor",
    
    structure =
    {
      "S.S",
      "...",
      "S.S",
    },

    x_sizes = { "121", "131", "141", "151" },
    y_sizes = { "111", "121", "131" },

    symmetry = "xy",
  },

--[[
  SOLID_D1 =
  {
    prob = 900,
    environment = "indoor",

    structure =
    {
      "/.\\",
      "...",
      "\\./",
    },

    x_sizes = { "111", "121", "131", "141", "151" },
    y_sizes = { "111", "121", "131" },

    symmetry = "xy",
  },

  SOLID_CSUB =
  {
    prob = 100,
    environment = "indoor",
    
    structure =
    {
      "S##v##S",
      "##...##",
      "S##^##S",
    },

    x_sizes =
    {
      "1111111", "1121111",
      "1121211", "1131211",
      "1131311", "1132311",
    },

    y_sizes = { "121", "131", "141", "151", "161", "171",
                "181", "191", "1A1", "1B1" },
  },

  SOLID_CSUB4 =
  {
    prob = 100,
    environment = "indoor",
    
    structure =
    {
      "S#v#S",
      "#...#",
      ">...<",
      "#...#",
      "S#^#S",
    },

    y_sizes = { "11111", "12121", "12221",
                "13131", "13231", "14141", "14241" },

    x_sizes = { "11111", "12121", "12221",
                "13131", "13231", "14141", "14241" },

    symmetry = "xy",
  },


  SOLID_C3 =
  {
    prob = 20,
    environment = "indoor",
    
    structure =
    {
      "S#S#S",
      "#####",
      "S#S#S",
    },

    x_sizes = { "11111", "12121", "12221", "13131" },
    y_sizes = { "121", "131", "141", "151" },

    symmetry = "xy",
  },

  SOLID_C5 =
  {
    prob = 80,
    environment = "indoor",

    structure =
    {
      "S###S",
      "#####",
      "##S##",
      "#####",
      "S###S",
    },

    x_sizes = { "11111", "12121", "13131" },
    y_sizes = { "11111", "12121", "13131" },

    symmetry = "xy",
  },

  SOLID_T1 =
  {
    prob = 30,
    environment = "indoor",
    
    structure =
    {
      "S###S",
      "#####",
      "##S##",
    },

    x_sizes = { "10101", "11111", "12121", "12221", "13131" },
    y_sizes = { "121", "131", "141", "151" },

    symmetry = "x",
  },

  SOLID_TSUB =
  {
    prob = 100,
    environment = "indoor",
    
    structure =
    {
      "S#v#S",
      "#...#",
      ">...<",
      "#...#",
      "##S##",
    },

    x_sizes = { "11111",
                "12121", "12221",
                "13131", "13231",
                "14141", "14241" },

    y_sizes = { "11101", "11111",
                "12111", "12121",
                "13121", "13131", "13231",
                "14131", "14141", "14241" },

    symmetry = "x",
  },


  SOLID_X1 =
  {
    prob = 10,
    environment = "indoor",

    structure =
    {
      "##S##",
      "#####",
      "S###S",
      "#####",
      "##S##",
    },

    x_sizes = { "11111", "11211", "12121", "12221" },
    y_sizes = { "11111", "11211", "12121", "12221" },

    symmetry = "xy",
  },

  SOLID_XSUB4 =
  {
    prob = 20,
    environment = "indoor",

    structure =
    {
      "##Sv#",
      ">...#",
      "S...S",
      "#...<",
      "#^S##",
    },

    x_sizes = { "11111", "11211", "11311", "11411",
                "12121", "12221", "12321", "12421", "12521" },

    y_sizes = { "11111", "11211", "11311", "11411",
                "12121", "12221", "12321", "12421", "12521" },
  },
--]]
}


----------------------------------------------------------------


LIQUID_FABS =
{
  LIQ_I =
  {
    structure =
    {
      "~.~",
    },

    x_sizes = { "111", "212", "313", "323" },

    y_sizes = { "1", "2", "3", "4", "5", "6", "7",
                "8", "9", "A" },

    symmetry = "xy",
    match_any = true,
  },

  LIQ_L =
  {
    prob = 5,

    structure =
    {
      ".~",
      "..",
    },

    x_sizes = { "12", "13", "14", "15", "25", "26", "27", "28" },
    y_sizes = { "12", "13", "14", "15", "25", "26", "27", "28" },

    match_any = true,
  },

  LIQ_L2 =
  {
    prob = 190,

    structure =
    {
      "~.",
      "~~",
    },

    x_sizes = { "22", "23", "24", "34", "35", "36", "37", "38" },
    y_sizes = { "22", "23", "24", "34", "35", "36", "37", "38" },

    match_any = true,
  },

  LIQ_O =
  {
    prob = 190,

    structure =
    {
      "...",
      ".~.",
      "...",
    },

    x_sizes = { "131", "141", "151", "242", "252", "262" },
    y_sizes = { "131", "141", "151", "242", "252", "262" },

    symmetry = "xy",
    match_any = true,
  },

  LIQ_U =
  {
    prob = 110,

    structure =
    {
      ".~.",
      "...",
    },

    x_sizes = { "121", "131", "141", "151", "242", "252" },
    y_sizes = { "12", "13", "14", "15", "25", "26", "27", "37" },

    symmetry = "x",
    match_any = true,
  },

  LIQ_E =
  {
    prob = 110,

    structure =
    {
      "..",
      ".~",
      "..",
      ".~",
      "..",
    },

    x_sizes = { "12", "13", "14", "15", "25", "26", "27" },
    y_sizes = { "12121", "13131", "14141" },

    symmetry = "y",
    match_any = true,
  },

  LIQ_S =
  {
    prob = 200,

    structure =
    {
      "~..",
      "~.~",
      "..~",
    },

    x_sizes = { "112", "212", "213", "313", "314", "414" },
    y_sizes = { "111", "121", "131", "141", "151", "161" },

    match_any = true,
  },

  LIQ_X =
  {
    prob = 300,

    structure =
    {
      "~.~",
      "...",
      "~.~",
    },

    x_sizes = { "212", "313", "414", "515", "616", },
    y_sizes = { "212", "313", "414", "515", "616", },

    symmetry = "xy",
    match_any = true,
  },

  LIQ_T =
  {
    prob = 150,

    structure =
    {
      "...",
      "~.~",
    },

    x_sizes = { "111", "212", "313", "414" },
    y_sizes = { "21", "31", "41", "51", "52", "62", "72" },

    symmetry = "x",
    match_any = true,
  },

  LIQ_H =
  {
    prob = 110,

    structure =
    {
      ".~.",
      "...",
      ".~.",
    },

    x_sizes = { "121", "131", "141", "151", "242", "252" },
    y_sizes = { "111", "212", "313", "414" },

    symmetry = "xy",
    match_any = true,
  },

--[[
  LIQ_WOW_2 =
  {
    prob = 900,


    structure =
    {
      "~~~#~~~",
      "~##v##~",
      "~#...#~",
      "~#...#~",
      "~#...#~",
      "~##^##~",
      "~~~#~~~",
    },

    x_sizes = { "1111111", "1121211", "1131311", "1141411",
                "2111112", "2121212", "2131312" },

    y_sizes = { "1110111", "1111111", "1121211", "1131311", "1141411",
                "2111112", "2121212", "2131312" },

    symmetry = "xy",
    match_any = true,
  },

  LIQ_WOW_4 =
  {
    prob = 600,


    structure =
    {
      "~~~#~~~",
      "~##v##~",
      "~#...#~",
      "#>...<#",
      "~#...#~",
      "~##^##~",
      "~~~#~~~",
    },

    x_sizes = { "1111111", "1121211", "1131311", "1141411",
                "2111112", "2121212", "2131312" },

    y_sizes = { "1111111", "1121211", "1131311", "1141411",
                "2111112", "2121212", "2131312" },

    symmetry = "xy",
    match_any = true,
  },
--]]
}


