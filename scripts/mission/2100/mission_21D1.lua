g_mission_information = {
  mission_string = "msg_act20",
  mission_area = "secondmefiress_shadow",
  mission_terrain = "stage/boss/secondmefiress_dtd/",
  mission_set_default = "scripts/mission/0109/set_secondmefiress_shadow.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = true
}
g_result_mefiress = {
  id = 97,
  stagename = "TOWN",
  timebonus_base = 34000,
  timebonus_rate = 80,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_mefiress_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "boss_is_dead" then
    Result(_ARG_0_, "g_result_mefiress")
  elseif _ARG_1_ == "result_mefiress_end" then
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
