# ベースイメージを指定
FROM golang:1.17-alpine

# 作業ディレクトリを作成
WORKDIR /app

# go.mod と go.sum をコピー
COPY go.mod ./
COPY go.sum ./

# 依存関係をダウンロード
RUN go mod download

# 残りのソースコードをコピー
COPY . .

# アプリケーションをビルド
RUN go build -o /myapp

# コンテナ起動時に実行するコマンドを指定
CMD ["/myapp"]
