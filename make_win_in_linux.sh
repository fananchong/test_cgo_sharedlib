#!/bin/bash

#### ubuntu 
# apt-get install gcc-multilib
# apt-get install gcc-mingw-w64

#### centos
# https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Automated%20Builds/
# https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Automated%20Builds/mingw-w64-bin_x86_64-linux_20131228.tar.bz2/download
# yum install bzip2
# mkdir mingw-w64 && mv mingw-w64-bin_x86_64-linux_20131228.tar.bz2 mingw-w64 && cd mingw-w64ll
# tar -jxvf mingw-w64-bin_x86_64-linux_20131228.tar.bz2
# export PATH=/mingw-w64/bin:$PATH

# 64bit
CC=x86_64-w64-mingw32-gcc-win32 GOOS=windows GOARCH=amd64 CGO_ENABLED=1 go build .

# 32bit
#CC=i686-w64-mingw32-gcc-win32 GOOS=windows GOARCH=386 CGO_ENABLED=1 go build .