function RenderCustom(_ARG_0_, _ARG_1_, _ARG_2_)
  ResetViewport(_ARG_0_)
  SetCurrentCamera(_ARG_0_, _ARG_1_)
  SetZMode(_ARG_0_, "lessequalon")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  RenderWorld(_ARG_0_, _ARG_2_, "all", "opaque")
  RenderWorld(_ARG_0_, _ARG_2_, "all", "punchthrough")
  LockZMode(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  RenderWorld(_ARG_0_, _ARG_2_, "all", "transparent")
end
