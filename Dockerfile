# どの Dockerイメージをベースにするか指定
FROM node:18

# 作業ディレクトリを指定
WORKDIR /app

# アプリケーションのソースコードをコンテナにコピー
COPY . .

# 依存関係をインストール
RUN npm install

# アプリケーションをビルド
RUN npm run build

# アプリケーションの起動コマンドを指定
CMD ["npm", "start", "--", "-p", "80"]
