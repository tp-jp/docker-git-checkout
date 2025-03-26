FROM alpine/git:latest

RUN apk add --no-cache bash

WORKDIR /workspace

# git cloneを実行
CMD ["/bin/bash", "-c", "clone https://${PAT_TOKEN}@github.com/${USER_NAME}/${REPOSITORY_NAME}.git"]
CMD ["/bin/bash", "-c", "clone https://${PAT_TOKEN}@github.com/${USER_NAME}/${REPOSITORY_NAME}.git"]
