up:: [[Компьютерное зрение]]
tags:: 

# OpenCV

Установка на Ubuntu

``` bash
sudo apt update
sudo apt install libopencv-dev
```

Далее идет установка дополниетльных модулей

``` bash
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON ..
make -j4  # Adjust the number (4) to match the number of cores in your processor for faster compilation
sudo make install
```

Либо через кросскомпиляцию

``` bash
sudo apt-get isntall g++-arm-linux-gnueabihf

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D CMAKE_TOOLCHAIN_FILE=<path-to-cross-toolchain-file> \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON ..

make -j4  # Use more cores if you have them
make install DESTDIR=<path-to-destination-directory>
```