# docker-git-checkout

この Docker イメージは、GitHub のリポジトリを指定したディレクトリにクローンするためのものです。  
`alpine:latest` ベースの軽量なイメージを使用し、`git` をインストールしてリポジトリのクローンを実行します。

## 使用方法

この Docker イメージを使うことで、GitHub リポジトリを指定した場所にクローンすることができます。  
`PAT_TOKEN`（Personal Access Token）、`USER_NAME`（GitHub のユーザー名）、および `REPOSITORY_NAME`（リポジトリ名）を環境変数として渡すことで、リポジトリをクローンできます。

## Docker コンテナの実行

次に、ビルドした Docker イメージを使ってコンテナを実行します。実行時に必要な環境変数を渡します。

```bash
docker run \
  -e PAT_TOKEN=<your_token> \
  -e USER_NAME=<your_username> \
  -e REPOSITORY_NAME=<your_repository_name> \
  my-git-clone-image
```

このコマンドにより、指定された GitHub リポジトリが /workspace ディレクトリにクローンされます。

## 環境変数

- PAT_TOKEN: GitHub の Personal Access Token (PAT)。プライベートリポジトリにアクセスするために必要です。
- USER_NAME: GitHub のユーザー名。
- REPOSITORY_NAME: クローンしたい GitHub リポジトリの名前。

## 注意点

- この Docker イメージは GitHub のプライベートリポジトリにアクセスするために、Personal Access Token（PAT）を必要とします。
- PAT_TOKEN の値はセキュリティ上、外部に漏れないように注意してください。
