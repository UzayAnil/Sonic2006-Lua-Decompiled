g_mission_information = {
  mission_string = "sonic_sonic_stg_kdv",
  mission_area = "kdv/sonic/a",
  mission_terrain = "stage/kdv/a/",
  mission_set_default = "placement/kdv/set_kdv_a_sonic.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = true
}
g_result_kdv = {
  id = 36,
  stagename = "TOWN",
  timebonus_base = 31000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_kdv_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_c" then
    if g_mission_information.mission_area == "kdv/sonic/a" then
      g_mission_information.mission_terrain = "stage/kdv/d/"
      g_mission_information.mission_area = "kdv/sonic/d"
      g_mission_information.mission_set_default = "placement/kdv/set_kdv_d_sonic.xml"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "kdv/sonic/b" then
      g_mission_information.mission_terrain = "stage/kdv/c/"
      g_mission_information.mission_area = "kdv/sonic/c"
      g_mission_information.mission_set_default = "placement/kdv/set_kdv_c_sonic.xml"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif _ARG_1_ == "goto_b" then
    g_mission_information.mission_terrain = "stage/kdv/b/"
    g_mission_information.mission_area = "kdv/sonic/b"
    g_mission_information.mission_set_default = "placement/kdv/set_kdv_b_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_kdv_end" then
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result_kdv")
end
