# どの Dockerイメージをベースにするか指定
FROM node:18

# 作業ディレクトリを指定
WORKDIR /app

# アプリケーションのソースコードをコンテナにコピー
COPY . .

# 依存関係をインストール
RUN npm install

# アプリケーションをビルドして起動
RUN npm run build

CMD ["npm", "start", "--", "-p", "80"]
