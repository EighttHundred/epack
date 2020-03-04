#!/bin/bash
# needn't install sogoupinyin when use this method
sudo yum -y install epel-release
sudo yum -y install fcitx fcitx-pinyin fcitx-configtool
# open Tweaks > Keyboard&Mouse,turn off all options in Additional Layout Options
# add Fcitx in Startup Acclication
echo 'export GTK_IM_MODULE=fcitx export QT_IM_MODULE=fcitx export XMODIFIERS="@im=fcitx"' > /etc/prifile.d/fcitx.sh
# reboot
fcitx-configtool
# add Sogou Pinyin to second option(first is English)
