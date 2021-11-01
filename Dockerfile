# Dockerfile References: https://docs.docker.com/engine/reference/builder/
# Youtube example https://www.youtube.com/watch?v=WPpw61vScIs&t=608s

# Start from the latest golang base image
FROM golang:latest
#FROM golang:1.16

# Add Maintainer Info
LABEL maintainer="Jimmy Saavedra <zinuhe@gmail.com>"

# Set the Current Working Directory inside the container
#WORKDIR $GOPATH/src/github.com/
WORKDIR /app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
# Copy go mod and sum files
COPY . .

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed. 
# COPY will copy those file to the working dir
#RUN go mod download
#RUN go get -d -v ./...
#COPY . . 

# Set environment variables
#ENV PORT 8080

# Install the package
#RUN go install -v ./...

# Build the Go app
#RUN go build -o main .
RUN go build main.go

# This container exposes port 3080 to the outside world
EXPOSE 3080

# Command to run once the container is initialize, is going to be the binary file
CMD ["./main"]


#If you want to reduce this size you can use a multistage docker file 
#first stage you build the program 
#second you copy the artifact program.

