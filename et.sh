#!/bin/zsh

getHelp(){
    echo "type help to get usage"
}
help(){

}
curl(){
    sudo apt install libssl-dev
    wget https://curl.haxx.se/download/curl-7.69.1.tar.gz
    ./configure --with-ssl
    make
    sudo make install
    sudo ldconfig
    touch ~/.curlrc
    echo "https=\"127.0.0.1:8118\"\
    http=\"127.0.0.1:8118\"\
    socks5=\"127.0.0.1:2333\"">~/.curlrc
}
v2ray(){
    wget https://git.io/v2ray.sh
    ./v2ray.sh
}
docker(){
    sudo apt install docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
}

fcitx(){
    # needn't install sogoupinyin when use this method
    sudo yum -y install epel-release
    sudo yum -y install fcitx fcitx-pinyin fcitx-configtool
    # open Tweaks > Keyboard&Mouse,turn off all options in Additional Layout Options
    # add Fcitx in Startup Acclication
    echo 'export GTK_IM_MODULE=fcitx export QT_IM_MODULE=fcitx export XMODIFIERS="@im=fcitx"' > /etc/prifile.d/fcitx.sh
    # reboot
    fcitx-configtool
    # add Sogou Pinyin to second option(first is English,error will occur when change turn)
}

gcc(){
    wget http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz
    tar zxf gcc-7.3.0.tar.gz
    cd gcc-7.3.0
    sudo yum -y install bzip2
    wget https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.16.1.tar.bz2
    wget https://gcc.gnu.org/pub/gcc/infrastructure/mpfr-3.1.4.tar.bz2
    wget https://gcc.gnu.org/pub/gcc/infrastructure/mpc-1.0.3.tar.gz
    wget https://gcc.gnu.org/pub/gcc/infrastructure/gmp-6.1.0.tar.bz2
    ./configure --disable-multilib --enable-languages=c,c++
    make -j 4
    sudo make install
}

# functions in shell
switchProxy(){
    CONFIG=/etc/v2ray/config.json
    sudo mv $CONFIG $CONFIG.tmp
    sudo mv $CONFIG.old $CONFIG
    sudo mv $CONFIG.tmp $CONFIG.old
    service v2ray restart
}
case $1 in
"")
    getHelp
    ;;
install)
    case $2 in
    "")
        getHelp
        ;;
    function)
        case $3 in
        "")
            getHelp
            ;;
        all)
            echo "install all functions"
            ;;
        esac
        ;;
    gcc)
        gcc
        ;;
    esac
    ;;
esac
