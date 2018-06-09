Enemy.eChaser_Normal = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveSwing(_ARG_0_, 500, 750, 3)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBombE", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 1.5)
    TurnTarget(_ARG_0_)
    ChargeAttack(_ARG_0_, 1500, 2000, 1.5)
    WaitFixed(_ARG_0_, 1.5)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    GroupFind(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eChaser_Chase = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    MoveParallel(_ARG_0_, 500, 60, 2000, 5)
    ShotObject(_ARG_0_, "EschBombE", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 1.5)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
  end
}
Enemy.eChaser_Master = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchFixed(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubLinersSwing")
    WaitFixed(_ARG_0_, 2)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBombE", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 2)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubLinersCharge")
    WaitFixed(_ARG_0_, 2)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBombE", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 2)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    FindAnimation(_ARG_0_)
    GroupFind(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
    GroupDie(_ARG_0_)
  end
}
Enemy.eChaser_Alarm = {
  Appear = function(_ARG_0_)
    AppearFixed(_ARG_0_)
  end,
  Search = function(_ARG_0_)
    SearchAround(_ARG_0_)
  end,
  Action = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubLinersSwing")
    WaitFixed(_ARG_0_, 2)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBombE", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 2)
    WaitAnimation(_ARG_0_, "Command")
    GroupCommand(_ARG_0_, "SubLinersCharge")
    WaitFixed(_ARG_0_, 2)
    TurnTarget(_ARG_0_)
    ShotObject(_ARG_0_, "EschBombE", 500)
    ActionRotate(_ARG_0_, "Main", 1, 1)
    WaitFixed(_ARG_0_, 2)
  end,
  Return = function(_ARG_0_)
    ReturnWarp(_ARG_0_)
  end,
  OnFind = function(_ARG_0_)
    WaitAnimation(_ARG_0_, "Warning")
    GroupBoot(_ARG_0_)
    WaitFixed(_ARG_0_, 2.5)
    GroupFind(_ARG_0_)
  end,
  OnCaught = function(_ARG_0_)
    CaughtCommon(_ARG_0_)
  end,
  OnDamage = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
  end,
  OnStun = function(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnGuardBreak = function(_ARG_0_)
    DamageKnockBack(_ARG_0_)
    StunAnimation(_ARG_0_)
  end,
  OnDead = function(_ARG_0_)
    DieRagdoll(_ARG_0_, 0.5, 1.5)
    CallChaosDrive(_ARG_0_, 2)
    DieExplosion(_ARG_0_, "DieMachineSmall", 5)
    GroupDie(_ARG_0_)
  end
}
