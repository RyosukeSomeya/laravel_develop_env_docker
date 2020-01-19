# Laravel開発環境テンプレート
## Dockerで構築するLaravel開発環境
### 構築される環境
```
LAMP + Laravel
L: Linux(alpine)
A: Apache2.4(alpine)
M: MySQL 5.7
P: PHP7.3

Laravel => バージョンは任意に対応
```
## 使用方法
### Laravel新規作成時
**1.Laravelのプロジェクト名とバージョンの指定**

ルートディレクトリの.envファイルを修正
```
PROJECT_NAME=任意のアプリ名
LARAVEL_VERSION=5.7.*　# <= 任意のバージョン. 空白で最新バージョン
```
<br>

**2.プロジェクト作成**

a.ローカル:ルートディレクトリにある新規アプリ作成スクリプト(create_app.sh)を実行
```
# ./create_app.sh
```
<br>
b. コンテナ内:aの実行が終了するとwebサーバーコンテナにアタッチされるので、`/var/www`ディレクトリで`setting.sh`を実行

```
# pwd
/var/www
# ./setting.sh
```
`setting.sh`では、`/var/www/laravel`ディレクトリでのLaravelのインストールと、
`/var/www/laravel`ディレクトリとDocumentRootに設定されているディレクトリ`/var/www/app`間でのシンボリックリンクが作成される。
<br>

c. ローカル:setting.shが完了後は、ブラウザから`http://localhost`で接続可能。LaravelTOPページが表示される。

### 2回目以降の実行

**1.ローカル:ルートディレクトリにあるアプリ実行スクリプト(start.sh)を実行**
```
# ./start.sh
```
上記コマンドで、`docker-compose up`と、サーバー内でプロジェクトのディレクトリとDocumentRoot用ディレクトリ間でシンボリックリンクが再度設定され、ブラウザからの接続が可能になる。