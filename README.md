# menstagram-monitor

<img src="logo.png" width="500">

**🍜 SUSURU FOREVER, SUSURU ANYWHERE 🍜**  
menstagram-monitorはMenstagramのモニタリングのためのリポジトリです。

### 環境構築

```bash
$ git clone https://github.com/uyupun/menstagram-monitor.git
$ cd menstagram-monitor
$ docker network create menstagram  // すでに作成している場合は実行しなくて良い
$ make init
```

### コマンド

```bash
$ make up           // コンテナの起動
$ make down         // コンテナの終了
$ make ps           // コンテナの状態(プロセス)の確認
$ make prometheus   // Prometheusの起動
$ make grafana      // Grafanaの起動
```

### Grafana
初期状態の認証情報は以下の通り.

```
username: admin
password: admin
```
