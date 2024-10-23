package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello World")
	var envVar string
	envVar = os.Getenv("TEST")
	fmt.Println(envVar)
}
