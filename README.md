# Golang WebServer
Simple Golang WebServer

Webserver is running. One can use curl to interact with it

```console
curl http://localhost:3080
```
Hello, /

&nbsp;

```console
curl http://localhost:3080/jimmy
```
Hello, jimmy

&nbsp;&nbsp;

Docker
```console
docker build -t golang-webserver .
```

```console
docker images
```

```console
docker run -d -p 3080:3080 golang-webserver
```

<br><br>
resp, err := http.Get("https://httpbin.org/get")
