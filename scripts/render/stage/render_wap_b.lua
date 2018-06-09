script.reload("scripts/render/render_gamemode.lua")
StencilClearFlag = true
function RenderVolumeLights(_ARG_0_)
  BeginBlock(_ARG_0_, "user0", "run")
  SetZMode(_ARG_0_, "lessequaloff")
  LockZMode(_ARG_0_, "true")
  SetBlendMode(_ARG_0_, "opaque")
  LockBlendMode(_ARG_0_, "true")
  SetCullMode(_ARG_0_, "none")
  LockCullMode(_ARG_0_, "true")
  SetColorWriteEnable(_ARG_0_, 0, 0, 0, 0, 0)
  SetConstantShader(_ARG_0_, "user0", "lzout", "DefaultTechnique")
  SetStencilEnable(_ARG_0_, "true", "true")
  SetStencilOp(_ARG_0_, "keep", "decr", "keep")
  SetBackStencilOp(_ARG_0_, "keep", "incr", "keep")
  SetStencilFunc(_ARG_0_, "always", 0, -1)
  RenderCustom(_ARG_0_, "mainuser0", "user0")
  LockZMode(_ARG_0_, "false")
  LockBlendMode(_ARG_0_, "false")
  LockCullMode(_ARG_0_, "false")
  SetColorWriteEnable(_ARG_0_, 0, 1, 1, 1, 1)
  SetConstantShader(_ARG_0_, "user0", "null")
  SetBlendMode(_ARG_0_, "add")
  SetStencilEnable(_ARG_0_, "true", "false")
  SetStencilOp(_ARG_0_, "keep", "keep", "keep")
  SetStencilFunc(_ARG_0_, "less", 0, -1)
  ColorFill(_ARG_0_, 0.2, 0.2, 0.2, 0)
  SetStencilEnable(_ARG_0_, "false", "false")
  EndBlock(_ARG_0_)
end
PostColorRender = RenderVolumeLights
