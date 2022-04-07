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
  "gzlib.c",
  "gzread.c",
  "gzwrite.c",
  "infback.c",
  "inffast.c",
  "inflate.c",
  "inftrees.c",
  "trees.c",
  "uncompr.c",
  "zutil.c",

  "contrib/minizip/ioapi.c",
  "contrib/minizip/unzip.c",
  "contrib/minizip/zip.c",
}

if (_PLATFORM_ANDROID) then
  -- Use fopen, ftello and fseeko instead of the 64 bit counter-parts. This can be removed once RTC targets an android
  -- platform greater than or equal to API 24 which does implement this
  defines { "IOAPI_NO_64" }
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
end
