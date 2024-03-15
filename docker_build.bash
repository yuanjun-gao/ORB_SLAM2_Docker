docker run -itd \
    -v `pwd`/ORB_SLAM2:/root/ORB_SLAM2 \
    --rm \
    --name orb_slam2 yuanjung/orb_slam2:v1 bash

docker exec -it orb_slam2 bash -c "cd /root/ORB_SLAM2 && bash build.sh"

docker stop orb_slam2