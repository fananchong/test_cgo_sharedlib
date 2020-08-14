#!/bin/bash

# 64bit
CC=x86_64-w64-mingw32-gcc-win32 GOOS=windows GOARCH=amd64 CGO_ENABLED=1 go build .

# 32bit
#CC=i686-w64-mingw32-gcc-win32 GOOS=windows GOARCH=386 CGO_ENABLED=1 go build .