// https://tutorialedge.net/golang/creating-simple-web-server-with-golang/

// go run main.go

// http://localhost:3080/world
// curl http://localhost:3080/world

package main

import (
  "fmt"
  "log"
  "net/http"
  "strconv"
  "sync"
)

var counter int
var mutex = &sync.Mutex{}

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
    })

    http.HandleFunc("/hi", func(w http.ResponseWriter, r *http.Request){
        fmt.Fprintf(w, "Hi")
    })

    log.Fatal(http.ListenAndServe(":3080", nil))
}
