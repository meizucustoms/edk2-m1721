[Defines]
  PLATFORM_NAME                  = M1721Pkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = M1721Pkg/M1721Pkg.fdf

!include M1721Pkg/M1721Pkg.dsc

[PcdsFixedAtBuild.common]
  # System Memory (3GB)
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x80000000
  gArmTokenSpaceGuid.PcdSystemMemorySize|0xC0000000
  
  # Framebuffer (1080x1920)
  gM1721PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x90000000
  gM1721PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gM1721PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|1920
  gM1721PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleWidth|1080
  gM1721PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleHeight|1920
