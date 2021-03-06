Other.GameShowSilver = inherits_from(ActionArea)
function Other.GameShowSilver.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.GameShowSilver")
end
function Other.GameShowSilver.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/d/"),
    Game.LoadStageSet("scripts/mission/0211/set_kdv_d_silver.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapD_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_d.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_d_sonic.XML", "pathobj"),
    Game.LoadPath("scripts/mission/0211/kdv_silver_d"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_a")
  })
  Game.SetPlayer(11788, 1411, 13690, 160, "venice.lua")
end
function Other.GameShowSilver.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function Other.GameShowSilver.esp001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("espstairs_right01")
  Game.ProcessMessage("espstairs_right01", "PsiEffect", {effect = true})
end
function Other.GameShowSilver.esp002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("espstairs_left01")
  Game.ProcessMessage("espstairs_left01", "PsiEffect", {effect = true})
end
function Other.GameShowSilver.iwa001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere01")
end
function Other.GameShowSilver.iwa002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere02")
end
function Other.GameShowSilver.open_cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function Other.GameShowSilver.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
end
function Other.GameShowSilver.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function Other.GameShowSilver.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door03")
end
function Other.GameShowSilver.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door04")
end
