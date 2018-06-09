Town.ShadowC = inherits_from(ActionArea)
function Town.ShadowC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.ShadowC")
end
function Town.ShadowC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.ShadowC.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_c.lua"),
    Game.LoadTerrain("stage/twn/c/"),
    Game.LoadStageSet("placement/twn/c/set_twn_c.xml"),
    Game.LoadStageSet("placement/twn/c/twn_mapC_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_c.lua"),
    Game.LoadPath("placement/csc/path_twnC_shadow"),
    Game.LoadKynapse("kynapse/town_c.kbf"),
    Game.LoadTownsmanInfo("kynapse/town_man_info_c.lua"),
    Game.SetAreaName("town_c"),
    Game.PlayBGM("stg_twn_c"),
    Game.LoadVoiceBank("sound/voice_twn_e"),
    Game.LoadRaderMap("twn/twn_radermap_c")
  })
  Game.SetPlayer(40610, 4392, -59848, -120, "shadow.lua")
end
