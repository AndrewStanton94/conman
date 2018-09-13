sudo apt install clang cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev python-xcbgen xcb-proto
sudo apt install libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev
sudo apt install libasound2-dev libpulse-dev i3-wm
# sudo apt install jsoncpp-devel libmpdclient-dev libcurl4-openssl-dev libcurlpp-dev libnl-3-dev
sudo apt install libmpdclient-dev libcurl4-openssl-dev libcurlpp-dev libnl-3-dev
# https://github.com/jaagr/polybar/wiki/Compiling

cd ~/Downloads/
git clone --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ..
sudo make install
make userconfig
