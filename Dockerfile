FROM node:lts-buster
RUN git clone https://github.com/vaibhavk10/knightbot-md/ /root/knightbot-md
WORKDIR /root/knightbot-md
RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  git \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
RUN npm install
CMD ["npm", "start"]
