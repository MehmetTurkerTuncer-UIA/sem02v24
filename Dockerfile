
FROM ubuntu:24.04
RUN apt-get update \
&& apt-get dist-upgrade -y \
&& apt-get autoremove -y \
&& apt-get autoclean -y \
&& apt-get install -y \
sudo \
nano \
wget \
curl \
git
RUN useradd -G sudo -m -d /home/mehmet -s /bin/bash -p "$(openssl passwd -1 221243Mt.)" mehmet
USER mehmet
WORKDIR /home/mehmet
RUN mkdir hacking \
&& cd hacking \
&& curl -SL https://raw.githubusercontent.com/uia-worker/is105misc/master/sem01v24/pawned.sh > pawned.sh \
&& chmod 764 pawned.sh \
&& cd ..
RUN git config --global user.email "mehmettt@student.uia.no" \
&& git config --global user.name "MehmetTurkerTuncer-UIA" \
&& git config --global url."https://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:@github.com/".insteadOf "https://github.com" \
&& mkdir -p github.com/MehmetTurkerTuncer-UIA