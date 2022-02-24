FROM golang:1.17-alpine

RUN apk add --update && apk add git

RUN go install github.com/cosmtrek/air@latest

WORKDIR /usr/src/app

ADD . /usr/src/app
