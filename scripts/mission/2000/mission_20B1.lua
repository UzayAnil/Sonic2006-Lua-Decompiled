g_mission_information = {
  mission_string = "sonic_stg_wvo_tails",
  mission_area = "wvo/tails/a",
  mission_terrain = "stage/wvo/a/",
  mission_set_default = "placement/wvo/set_wvoA_tails.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = true
}
g_result_wvo = {
  id = 46,
  stagename = "TOWN",
  timebonus_base = 45000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 52000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_wvo_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "wvo/sonic/a" then
    g_mission_information.mission_terrain = "stage/wvo/b/"
    g_mission_information.mission_area = "wvo/sonic/b"
    g_mission_information.mission_set_default = "placement/wvo/set_wvoB_sonic.XML"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_wvo_end" then
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
  Result(_ARG_0_, "g_result_wvo")
end
