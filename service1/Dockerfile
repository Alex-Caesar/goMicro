ARG NAME=softcomp

FROM golang:latest AS build
WORKDIR /app
COPY go.mod go.sum /
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o $NAME

FROM scratch
ENV TEST=working2
COPY --from=build /app/$NAME /$NAME
EXPOSE 8080
ENTRYPOINT ["/$NAME"]