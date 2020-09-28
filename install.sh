set -x

sudo apt-get update
sudo apt-get remove libcurl4
sudo apt-get install libboost-python1.62.0
sudo pip install azure-iothub-device-client
sudo wget http://security.debian.org/debian-security/pool/updates/main/c/curl/libcurl3_7.52.1-5+deb9u11_armhf.deb
sudo dpkg -i libcurl3_7.52.1-5+deb9u11_armhf.deb
sudo pip install applicationinsights
sudo pip install adafruit_gpio
sudo apt --fix-broken install

cd /usr/local/lib/python2.7/dist-packages/Adafruit_PureIO/
sudo rm smbus.py
sudo wget https://raw.githubusercontent.com/adafruit/Adafruit_Python_PureIO/595957cc5662c1b22306fe9c05eb45abb6b9ce72/Adafruit_PureIO/smbus.py

set +x
