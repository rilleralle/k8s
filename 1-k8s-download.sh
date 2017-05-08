echo '-----Download xubuntu-xenial-mate from pine64.org and extract-----'
curl "http://files.pine64.org/os/ubuntu/xubuntu-xenial-mate-20161215-longsleep-pine64-8GB.img.gz" -o "xubuntu-xenial-mate-20161215-longsleep-pine64-8GB.img.gz" | gunzip

echo '-----Download Ubuntu Server for ARM64-----'
curl "http://cdimage.ubuntu.com/releases/16.04.2/release/ubuntu-16.04.2-server-arm64.iso" -o "ubuntu-16.04.2-server-arm64.iso"
