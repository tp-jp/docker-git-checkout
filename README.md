# docker-git-checkout

この Docker イメージは、GitHub のリポジトリを指定したディレクトリにクローンするためのものです。  
`alpine:latest` ベースの軽量なイメージを使用し、`git` をインストールしてリポジトリのクローンを実行します。

## 使用方法

以下のコマンドを実行することで、GitHub リポジトリを指定した場所にクローンすることができます。

```bash
docker run \
  -e PAT_TOKEN=<your_token> \
  -e USER_NAME=<your_username> \
  -e REPOSITORY_NAME=<your_repository_name> \
  -e CLONE_DIR=<your_workspace>/<your_repository_name>
  my-git-clone-image
```

このコマンドにより、指定された GitHub リポジトリが /workspace ディレクトリにクローンされます。

## 環境変数

| 変数名            | 説明                                                                                        |
| ----------------- | ------------------------------------------------------------------------------------------- |
| `PAT_TOKEN`       | GitHub の Personal Access Token (PAT)。プライベートリポジトリにアクセスするために必要です。 |
| `USER_NAME`       | GitHub のユーザー名。                                                                       |
| `REPOSITORY_NAME` | クローンしたい GitHub リポジトリの名前。                                                    |
| `CLONE_DIR`       | クローン先のディレクトリ。                                                                  |

## 注意点

- この Docker イメージは GitHub のプライベートリポジトリにアクセスするために、Personal Access Token（PAT）を必要とします。
- PAT_TOKEN の値はセキュリティ上、外部に漏れないように注意してください。
