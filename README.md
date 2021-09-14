# docker_lesson

### 概要
同一ネットワークに属する2つの仮想マシン
・Guest_1(192.168.200.11)
・Guest_2(192.168.200.12)
を起動して iperfコマンドにより接続の確認を行う

### ディレクトリ構成
./
  - Dockerfile
  - docker-compose.yml

### 実行手順
# イメージ作成（Ubuntu16.04のイメージの作成　./ 内で以下のコマンドを実行）
  docker image build -t myubuntu:16.04 .
  
# コンテナの起動（./ 内で以下のコマンドを実行）
  docker-compose up

# Guest_1 のbashに入る
  docker exec -it Guest_1 bash
  iperf -s -u  # サーバーモードで待機

# Guest_2 のbashに入る
  docker exec -it Guest_2 bash
  iperf -c192.168.200.11 -b100M -t5 -i1 -u  # クライアントモードでGuest_1にデータ送信
  
