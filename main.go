package main

/*
#cgo CFLAGS: -I./include
#cgo !windows LDFLAGS: -L./linux -lfoo -Wl,-rpath=./
#include <stdio.h>
#include <stdlib.h>
#include "foo.h"
*/
import "C"
import (
	"fmt"
)

func main() {
	fmt.Printf("rannum:%x\n", C.rand())
	fmt.Println(C.Num)
	C.foo()
}
