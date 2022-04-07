project "zlib"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "AB6BCA95-BBFC-43E3-871D-CA9A3107A2E0"

includedirs {
  ".",
}

files  {
  "adler32.c",
  "compress.c",
  "crc32.c",
  "deflate.c",
  "gzread.c",
  "gzwrite.c",
  "infback.c",
  "inffast.c",
  "inflate.c",
  "inftrees.c",
  "ioapi.c",
  "trees.c",
  "uncompr.c",
  "unzip.c",
  "zip.c",
  "zutil.c",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
  defines {
    "_CRT_SECURE_NO_WARNINGS",
  }
end
