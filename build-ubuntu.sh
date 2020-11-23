mkdir -p build/ubuntu

# Ubuntu 20.04
# Runtime dependencies:
# sudo apt install libavahi-compat-libdnssdl libqt5widgets5
docker run --rm -it -v "$(pwd):/var/synergy" --entrypoint="/usr/bin/bash" symless/synergy-core:ubuntu20.04 -c 'cd /var/synergy/build/ubuntu && cmake -DCMAKE_BUILD_TYPE=Release ../../ && . ./version && make -j'

# You may now use build/macos/bin/synergy,synergyc,synergys,syntool
