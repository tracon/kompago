FROM golang:1.8
WORKDIR /go/src/github.com/tracon/kompago
COPY main.go .
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN go-wrapper download
RUN go build -a -installsuffix cgo -o /go/bin/kompago .

FROM scratch
COPY --from=0 /go/bin/kompago /kompago
ENTRYPOINT ["/kompago"]
