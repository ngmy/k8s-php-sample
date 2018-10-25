# k8s-php-sample

KubernetesでPHPアプリケーションを動かすサンプルです。

## 起動
### 1. プロジェクトのclone
```
$ cd ~/your/workspace
$ git clone git@github.com:ngmy/k8s-php-sample.git
```

### 2. nginxコンテナのビルド
```
$ cd ~/your/workspace/k8s-php-sample/kubernetes/containers/nginx
$ make build
```

### 3. php-fpmコンテナのビルド
```
$ cd ~/your/workspace/k8s-php-sample/kubernetes/containers/php-fpm
$ make build
```

### 4. 起動スクリプト実行
```
$ cd ~/your/workspace/k8s-php-sample
$ ./scripts/create.sh
```

## 動作確認
### 1. hostsファイルの編集
`/etc/hosts`に下記を追加してください。
```
127.0.0.1 my.web.jp
127.0.0.1 my.api.jp
```

### 2. ブラウザでアクセス
- http://my.web.jp/
- http://my.api.jp/

## 終了
```
$ cd ~/your/workspace/k8s-php-sample
$ ./scripts/delete.sh
```
