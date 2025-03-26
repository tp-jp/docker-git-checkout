FROM alpine:latest

RUN apk update && apk add --no-cache git

WORKDIR /workspace

# git cloneを実行
CMD ["/bin/sh", "-c", "git clone https://${PAT_TOKEN}@github.com/${USER_NAME}/${REPOSITORY_NAME}.git"]
