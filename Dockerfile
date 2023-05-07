from ubuntu-base
run apt-get -y install aria2
run apt-get -y install ffmpeg
run apt-get -y install ghostscript
run apt-get -y install poppler-utils
run apt-get -y install imagemagick
run pip3 install img2pdf
run pip3 install yt-dlp
run mkdir /container

arg username
arg user_uid
arg user_gid
run groupadd --gid $user_gid $username
run useradd --uid $user_uid --gid $user_gid --home-dir /container/$user_uid-$user_gid -m $username
user $user_uid:$user_gid
