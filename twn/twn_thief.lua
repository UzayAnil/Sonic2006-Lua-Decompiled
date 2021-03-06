script.reload("twn/twn_mancommon.lua")
base_motion_package_name = "twn/twn_youngman_motion"
man_package_name = "twn/twn_thief"
EquipmentItem = {
  {
    object_name = "thiefbag",
    package_name = "twn/twn_item_thiefbag01"
  }
}
VoiceList = {
  {
    name = "talk",
    id = "youngman_normal"
  },
  {
    name = "joy",
    id = "youngman_joy"
  },
  {
    name = "angry",
    id = "youngman_angry"
  },
  {
    name = "sad",
    id = "youngman_sad"
  },
  {
    name = "surprise",
    id = "youngman_surprize"
  },
  {
    name = "dodge",
    id = "youngman_dodge"
  },
  {
    name = "damage",
    id = "thief_damage"
  },
  {
    name = "call",
    id = "youngman_call"
  },
  {name = "clap", id = "clap"},
  {
    name = "down",
    id = "thief_damage"
  }
}
FootStepSE = "townsman_step"
WalkBaseSpeed = youngman_walkspeed
RunBaseSpeed = youngman_runspeed
RunFearBaseSpeed = youngman_runfearspeed
MaxMoveSpeed = youngman_runspeed * 2
ModelVariation = {
  {
    body_color_no = 0,
    face_color_no = 0,
    hair_color_no = 0,
    hair_model = 0,
    accessory = {
      {object_name = "thiefbag", node_name = "LeftHand"}
    }
  }
}
