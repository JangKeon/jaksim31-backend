# 기존 이미지 삭제
sudo docker rmi qkdrmsgh73/jaksim31-backend

sudo docker rm -f qkdrmsgh73/jaksim31-backend

# 도커 실행
sudo docker run -d  -p 8082:8080 -v /home/centos/jaksim31-nfs/logs/spring2:/logs --restart=unless-stopped --name jaksim31-backend qkdrmsgh73/jaksim31-backend

# 사용하지 않는 불필요한 이미지 삭제 -> 현재 컨테이너가 물고 있는 이미지는 삭제되지 않습니다.
sudo docker rmi -f $(docker images -f "dangling=true" -q) || true