package dfmt

import (
	"encoding/json"
	"fmt"
)

type Data struct {
	data interface{}
}

func Encode(any interface{}) (d Data) {
	return Data{data: any}
}

func (d *Data) String() (s string) {
	return fmt.Sprintf("%#v", d.data)
}

func (d *Data) ToJSON() (b []byte, err error) {
	return json.Marshal(d.data)
}

// TODO
// func (d *Data) ToTable() (s string)
