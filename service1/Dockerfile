FROM golang:1.23.2-alpine3.20 AS build
WORKDIR /app
COPY go.mod go.sum /
RUN go mod download
COPY *.go ./
RUN RUN CGO_ENABLED=0 GOOS=linux go build -o service1

FROM scratch
ENV TEST=working2
COPY --from=build /app .
EXPOSE 8080
CMD ["./service1"]