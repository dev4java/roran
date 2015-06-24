package test

import (
	f "fmt"
	run "runtime"
)

func say(s string) {
	for i := 0; i < 100000; i++ {
		run.Gosched()
		//f.Print(s + "--")
		f.Println(i)
	}
}

func main() {
	//go say("test")
	f.Println(111)
}
