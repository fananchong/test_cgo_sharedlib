package main

/*
#cgo CFLAGS: -I./include
#cgo !windows LDFLAGS: -L./linux -lfoo -Wl,-rpath=./
#cgo windows LDFLAGS: -L./windows -lfoo
#include <stdio.h>
#include <stdlib.h>
#include "foo.h"
*/
import "C"
import (
	"fmt"
)

func main() {
	fmt.Printf("aaa\n")
	fmt.Printf("rannum:%x\n", C.rand())
	C.foo()
}
