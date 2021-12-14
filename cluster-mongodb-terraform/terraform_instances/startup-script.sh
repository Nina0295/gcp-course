#!/bin/bash

if [ ! -d Movie-Booking-and-Recommendation-Website ]
then
  su root && \
  apt-get update && apt-get install git -y && \
  curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
  apt-get install -y nodejs && \
  npm install -g pm2 && \
  git clone https://github.com/ega-forever/akvelon-cloud-gcp.git
fi