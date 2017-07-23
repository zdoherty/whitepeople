// Package whitepeople implements an HTTP redirection handler
// for whitepeoplesnitch.com
package main

import (
	"net/http"
	"log"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Location", "https://www.yelp.com")
		w.WriteHeader(http.StatusFound)
		w.Write([]byte(":^)\n"))
	})

	log.Fatal(http.ListenAndServe(":8080", nil))
}

