from conans import ConanFile


class ZlibConan(ConanFile):
    name = "zlib"
    version = "1.2.11"
    url = "https://devtopia.esri.com/3rdparty/zlib/tree/runtimecore"
    license = "http://zlib.net/zlib_license.html"
    description = "Lossless data-compression library."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/zlib/"

        # headers
        self.copy("*.h*", src=base, dst=relative)

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
