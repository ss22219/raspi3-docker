# frp version.
frp_0.16.0_linux_arm
# Docker Use.
docker pull zlee/frpc-raspi3:latest
#
docker run -d -h="frpc-docker" --name frpc-docker -v /sysconf/frp/frpc.ini:/usr/local/frpc/frpc.ini zlee/frpc-raspi3:latest
