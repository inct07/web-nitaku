# README

Railsプロジェクトのローカル環境セットアップ
```
$ bundle install --path vendor/bundle --binstubs=vendor/bin
```

データベース作成
```
$ rake db:create
```

実行
```
$ rails s
```

ブラウザで下記URLに接続できたら成功
http://localhost:3000/
