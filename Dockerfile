# Dockerfile References: https://docs.docker.com/engine/reference/builder/

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

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
#RUN go mod download
#RUN go get -d -v ./...

# Install the package
#RUN go install -v ./...

# Build the Go app
#RUN go build -o main .
RUN go build main.go


# This container exposes port 3080 to the outside world
EXPOSE 3080

# Command to run the executable
CMD ["./main"]
