## Getting Started

以下のコマンドでイメージを作成することができる。

```
docker build -t myapp:latest -f ./Dockerfile.dev .
```

作成したイメージを以下のコマンドで起動

```
docker run --name myapp -p 8080:80 myapp
```

[http://localhost:8080/](http://localhost:8080/)にアクセスしてみてください。
