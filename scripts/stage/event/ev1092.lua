g_mission_information = {
  mission_area = "eGenesis_sonic",
  mission_terrain = "stage/boss/dr2_forest/",
  mission_event_start = ""
}
c_flag_play_event = 0
function main(_ARG_0_)
  if GetTemporaryFlag(_ARG_0_, c_flag_play_event) == 0 then
    SetTemporaryFlag(_ARG_0_, c_flag_play_event, 1)
    PlayEvent(_ARG_0_, "e1092", "_event_end")
  end
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
