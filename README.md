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
$ make grafana      // Grafanaの起動
$ make prometheus   // Prometheusの起動
$ make cadvisor     // cAdvisorの起動
```

### Grafana

##### 認証情報
初期状態の認証情報は以下の通り.

```
username: admin
password: admin
```

##### データソースの設定
1. http://localhost:3001/datasources/new を開く
2. Add data source画面からPrometheusをSelectする
3. Data Sources / Prometheus-2画面からHTTP > URLにhttp://localhost:9090, AccessにBrowserを設定し, Save & Testを押して保存する

##### ダッシュボードのインポート
1. http://localhost:3001/dashboard/import を開く
2. Upload .json fileを押す
3. menstagram-monitorのプロジェクトルートにあるgrafana.jsonを開いてLoadを押す

##### ダッシュボードを見る
1. http://localhost:3001/ を開く
2. DashboardsからDocker Container & Host Metricsを開く
