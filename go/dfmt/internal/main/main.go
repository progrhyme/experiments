package main

import (
	"fmt"
	"log"

	"github.com/progrhyme/experiments/go/dfmt"
)

func main() {
	data := dfmt.Encode(map[string]string{"foo": "bar"})
	fmt.Printf("Data: %s\n", data)
	b, err := data.ToJSON()
	if err != nil {
		log.Printf("Error to convert into JSON! data: %s, err: %v", data, err)
	}
	fmt.Printf("JSON: %s\n", b)
}
