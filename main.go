package main

import "fmt"
import "time"
import "os"
import "github.com/stianeikeland/go-rpio/v4"

var (
    pin = rpio.Pin(10)
)

func main() {
    if err := rpio.Open(); err != nil {
       fmt.Println(err)
       os.Exit(1)
       }
    pin.Output()

    go blinkLed();
    fmt.Println("Hello World")
    time.Sleep(time.Duration(1<<63 - 1))
}

func blinkLed() {

    pin.Output()

    for {
       pin.Toggle();
       time.Sleep(1 * time.Second);
       }
}

