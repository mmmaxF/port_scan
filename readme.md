Linuxだと daemon は普通に動きますが、
MacはLinuxカーネルではないので
👉 仮想Linuxの中でDockerが動く
    
    Docker CLI → socket接続 → Colima VM → Docker daemon

▪手順
1. 仮想でDocker Damonを起動
    colima start
2. イメージ取得
    docker pull kalilinux/kali-rolling
3. Dockerfileとdocker-compose.ymlを作成する
4. ビルド
    docker-compose build
5. アップ
    docker-compose up -d
6. 中に入る
    docker-compose exec kali bash