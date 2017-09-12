# Kompassi AMQP consumer in Go

Just like [kompaq](https://github.com/tracon/kompaq) but in Go.

## Getting started

    go get
    go run main.go

## Configuration

Accepts single environment variable `AMQP_URL` to tell where RabbitMQ is.

## TODO

- [ ] Die when the AMQP connection is disconnected so that `systemd` can restart us
