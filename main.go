package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"net/http"
)

// MacAddr Address Flag
var MacAddr = flag.String("mac", "", "MAC Address")

// Usage help message
var Usage = func() {
	fmt.Println("Get Vendor for specified MAC Address \n Usage:")
	flag.PrintDefaults()
}

func getMac() {

	mvAPI := "https://api.macvendors.com/" + *MacAddr
	resp, _ := http.Get(mvAPI)
	body, err := ioutil.ReadAll(resp.Body)

	if err != nil {
		defer resp.Body.Close()
		fmt.Printf("%s \n", err)
	} else {
		defer resp.Body.Close()
		fmt.Printf("%s \n", body)
	}
}

func main() {
	flag.Parse()
	if flag.NFlag() == 0 {
		Usage()
	} else {
		getMac()
	}
}
