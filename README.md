# Golang WebServer
Simple Golang WebServer

Webserver is running. Try interacting with it using curl

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
