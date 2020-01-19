# コンテナ起動
docker-compose up -d --build

# アタッチ
docker exec -it app_server /bin/bash ./restart.sh
