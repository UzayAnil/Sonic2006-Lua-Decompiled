g_mission_information = {
  mission_string = "shadow_stg_csc",
  mission_area = "csc/shadow/a",
  mission_terrain = "stage/csc/a/",
  mission_set_default = "scripts/mission/0102/set_cscA_shadow.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = true
}
g_result_csc = {
  id = 62,
  stagename = "TOWN",
  timebonus_base = 50000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 800,
  ringbonus_d = 500,
  finish = "result_csc_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "AtoB" then
    g_mission_information.mission_terrain = "stage/csc/b/"
    g_mission_information.mission_area = "csc/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscB_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "BtoC" then
    g_mission_information.mission_terrain = "stage/csc/c/"
    g_mission_information.mission_area = "csc/shadow/c"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscC_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "CtoF" then
    g_mission_information.mission_terrain = "stage/csc/f/"
    g_mission_information.mission_area = "csc/shadow/f"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscF_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_csc_end" then
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
  Result(_ARG_0_, "g_result_csc")
end
