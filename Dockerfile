sudo debootstrap focal focal > /dev/null
sudo tar -C focal -c . | docker import - focal

sha256:81ec9a55a92a5618161f68ae691d092bf14d700129093158297b3d01593f4ee3
docker run focal cat /etc/lsb-release

DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=22.04
DISTRIB_CODENAME=Jammy Jellyfish
DISTRIB_DESCRIPTION="Ubuntu 22.04 LTS"
