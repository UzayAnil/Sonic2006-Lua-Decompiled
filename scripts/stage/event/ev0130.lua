g_mission_information = {
  mission_area = "test_player/sonic",
  mission_terrain = "stage/other/test002/",
  mission_movie_start = "event/e0130/e0130.sfd",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
