FROM alpine/git:latest

WORKDIR /workspace

# git cloneを実行
CMD ["/bin/sh", "-c", "git clone https://${PAT_TOKEN}@github.com/${USER_NAME}/${REPOSITORY_NAME}.git"]
