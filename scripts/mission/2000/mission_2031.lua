g_mission_information = {
  mission_string = "msg_act24",
  mission_area = "boss/sonic_vs_silver",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "placement/boss/vs_character/set_sonic_vs_silver.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = true
}
g_result_silver = {
  id = 48,
  stagename = "TOWN",
  timebonus_base = 24000,
  timebonus_rate = 80,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 800,
  ringbonus_d = 500,
  finish = "result_silver_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "boss_is_dead" then
    Result(_ARG_0_, "g_result_silver")
  elseif _ARG_1_ == "result_silver_end" then
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
end
