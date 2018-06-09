script.reload("player/animation_common.lua")
UserData = {
  {
    animation = "walk",
    type = "sound",
    time = 0.06,
    value = sound_footstep_r
  },
  {
    animation = "walk",
    type = "model",
    time = 0.06,
    value = particle_footstep
  },
  {
    animation = "walk",
    type = "sound",
    time = 0.31,
    value = sound_footstep_l
  },
  {
    animation = "walk",
    type = "model",
    time = 0.31,
    value = particle_footstep
  },
  {
    animation = "run",
    type = "sound",
    time = 2 * frame,
    value = sound_footstep_r
  },
  {
    animation = "run",
    type = "sound",
    time = 17 * frame,
    value = sound_footstep_l
  },
  {
    animation = "dush",
    type = "sound",
    time = 3 * frame,
    value = sound_footstep_r
  },
  {
    animation = "dush",
    type = "sound",
    time = 27 * frame,
    value = sound_footstep_l
  },
  {
    animation = "spinattack_s",
    type = "model_system",
    time = 8 * frame,
    value = animation_signal_0
  },
  {
    animation = "spinattack_l",
    type = "model_system",
    time = 8 * frame,
    value = animation_signal_0
  },
  {
    animation = "spinattack_e",
    type = "model_system",
    time = 8 * frame,
    value = animation_signal_0
  },
  {
    animation = "attack",
    type = "model_system",
    time = 0 * frame,
    value = animation_signal_0
  }
}
