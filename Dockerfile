FROM alpine/git:latest

WORKDIR /workspace

# git cloneを実行
CMD ["/bin/bash", "-c", "clone https://${PAT_TOKEN}@github.com/${USER_NAME}/${REPOSITORY_NAME}.git"]
