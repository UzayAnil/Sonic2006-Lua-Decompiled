g_mission_information = {
  mission_string = "msg_m1108_title008_01_1",
  mission_area = "twn/shadow/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/1108/set_mission_1108_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_shadow.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_fast"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1108 = {
  id = 173,
  stagename = "TOWN",
  timebonus_base = 17500,
  timebonus_rate = 100,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 47500,
  rank_b = 45000,
  rank_c = 42500,
  rank_d = 0,
  ringbonus_s = 1000,
  ringbonus_a = 500,
  ringbonus_b = 300,
  ringbonus_c = 200,
  ringbonus_d = 100,
  finish = "result_1108_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1108_108" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  elseif _ARG_1_ == "msg_m1108_152" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1108_108" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "sad")
      g_name_setuped = "msg_m1108_n108"
      g_message_setuped = _ARG_1_ .. "_01_3"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
      g_name_setuped = "msg_m1108_n108"
      g_message_setuped = _ARG_1_ .. "_01_4"
    end
  elseif _ARG_1_ == "msg_m1108_152" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    SetAnimationTalkWith(_ARG_0_, "wait", "surprise")
    g_name_setuped = "msg_m1108_n152"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/b" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/circuit/"
      g_mission_information.mission_area = "twn/shadow/d"
      g_mission_information.mission_set_default = "scripts/mission/1108/set_mission_1108_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/shadow/d" then
    if _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/1108/set_mission_1108_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end2" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/1108/set_mission_1108_02.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "add_rivalcar" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end2")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "CLEAR_FLAG" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1108_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1108_rule008_01_1")
    StartCountdown(_ARG_0_, 300, "CLEAR_FLAG")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1108_108_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1108_152_01_1" then
    SetGlobalFlag(_ARG_0_, 1108, 1)
    Result(_ARG_0_, "g_result_1108")
  elseif _ARG_1_ == "msg_m1108_108_01_4" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
