mkdir -p build/macos

# macOS Big Sur
# Build depdencies:
# brew install qt
# Also make sure xcode tools are installed
export PATH="/usr/bin/"
export PATH="/usr/local/opt/qt/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"
cd build/macos && /usr/local/bin/cmake -DCMAKE_OSX_DEPLOYMENT_TARGET=10.16 -DCMAKE_OSX_ARCHITECTURES=x86_64 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release ../../ && . ./version && make -j && make install/strip

# You may now use build/macos/bundle/Synergy.app
