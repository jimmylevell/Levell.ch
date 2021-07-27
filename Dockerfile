###############################################################################################
# Levell - BASE
###############################################################################################
FROM nginx:latest as levell-ch-base

WORKDIR /usr/share/nginx/html

# update the image
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update
RUN apt-get upgrade -y
RUN apt-get install vim -y
RUN apt-get install net-tools -y
RUN apt-get install dos2unix -y
RUN apt-get install git -y

###############################################################################################
# Levell - DEPLOY
###############################################################################################
FROM levell-ch-base as levell-ch-deply

COPY . .

# publish app
EXPOSE 80