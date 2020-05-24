FROM golang:alpine AS builder
# Install git.
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git
RUN go get -u github.com/git-chglog/git-chglog/cmd/git-chglog


FROM alpine:3.11
# Copy our static executable.
COPY --from=builder /go/bin/git-chglog /bin/git-chglog

RUN apk add --no-cache  bash git
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
