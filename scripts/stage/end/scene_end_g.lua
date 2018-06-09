Light = {
  Ambient = {
    Color = {
      0.53,
      0.4,
      0.47,
      0.83
    }
  },
  Main = {
    Type = "Directional",
    Color = {
      0.52,
      0.45,
      0.5,
      1.1
    },
    Direction_3dsmax = {
      Position = {
        0.5956,
        -0.2408,
        0.7663
      },
      Target = {
        0,
        0,
        0
      }
    }
  },
  Sub = {
    Type = "Directional",
    Color = {
      0.4,
      0.28,
      0.6,
      1.2
    },
    Direction_3dsmax = {
      Position = {
        -0.4983,
        0.24,
        -0.6427
      },
      Target = {
        0,
        0,
        0
      }
    }
  }
}
LightPresets = {
  DarkAmbient = {
    Type = "Ambient",
    Color = {
      0.63,
      0.3,
      0.55,
      0.7
    }
  },
  DarkMain = {
    Type = "Directional",
    Color = {
      0.48,
      0.42,
      0.35,
      0.75
    },
    Direction_3dsmax = {
      Position = {
        0.5956,
        -0.2408,
        0.7663
      },
      Target = {
        0,
        0,
        0
      }
    }
  },
  DarkSub = {
    Type = "Directional",
    Color = {
      0.5,
      0.4,
      0.6,
      1.8
    },
    Direction_3dsmax = {
      Position = {
        -0.4983,
        0.24,
        -0.6427
      },
      Target = {
        0,
        0,
        0
      }
    }
  }
}
OLS = {
  SunColor = {
    11,
    10,
    11.5,
    0.8
  },
  BRay = {
    0.15,
    0.1,
    0.25,
    1.0E-4
  },
  BMie = {
    0.3,
    0.2,
    0.13,
    2.5E-4
  },
  G = 0.55
}
OLS2 = {
  SunColor = {
    11,
    10,
    11.5,
    0.8
  },
  BRay = {
    0.15,
    0.1,
    0.25,
    1.0E-4
  },
  BMie = {
    0.2,
    0.3,
    0.08,
    0.0012
  },
  G = 0.6
}
EnvMap = {
  FileName = "stage/kdv/a/kdv_envmap.dds"
}
Bloom = {
  MinThreshold = 0.21,
  MaxThreshold = 2,
  Scale = 5.5
}
ReflectionAreas = {
  FileName = "stage/kdv/a/kdv_mapA_rfzone",
  ClumpCutoffCoverage = 1,
  SectorCutoffCoverage = 0.2
}
