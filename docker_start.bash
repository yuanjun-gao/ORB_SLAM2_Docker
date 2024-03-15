xhost +local:docker

docker run -itd \
    -v `pwd`/ORB_SLAM2:/root/ORB_SLAM2 \
    -v "/media/ringo/Extreme SSD/KITTI/KITTIOdometry_data_odometry_gray":/root/KITTI \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY  \
    --rm \
    --name orb_slam2 yuanjung/orb_slam2:v1 bash

docker exec -it orb_slam2 bash -c "./ORB_SLAM2/Examples/Monocular/mono_kitti ORB_SLAM2/Vocabulary/ORBvoc.txt ORB_SLAM2/Examples/Monocular/KITTI00-02.yaml /root/KITTI/dataset/sequences/00"

docker stop orb_slam2
