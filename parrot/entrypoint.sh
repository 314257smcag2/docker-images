#!/bin/bash
echo -e "\nhttps://github.com/qeeqbox/docker-images\n\nCustom Parrot OS distro accessible via VNC, RDP or web"
x1=$(hostname -I | cut -d' ' -f1)
x2=AliAly032230
x3=AliAly032230
x4=AliAly032230
echo -e "\nroot pass -> $x2\n-----------------------\nUsername  -> shakugan\nPassword  -> $x3\nVNC pass  -> $x4\n\nhttp://$x1:6080/index.html\n"
mkdir -p /home/shakugan/.vnc
echo AliAly032230 | vncpasswd -f > /home/shakugan/.vnc/passwd
chmod 600 /home/shakugan/.vnc/passwd
chown -R shakugan:shakugan /home/shakugan/
unset x1 x2 x3 x4
supervisord 1>/dev/null 2>/dev/null
