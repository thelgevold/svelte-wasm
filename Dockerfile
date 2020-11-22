FROM ubuntu:18.04

WORKDIR /usr

COPY WORKSPACE /usr
COPY BUILD.bazel /usr
COPY package.json /usr
COPY .bazelrc /usr

RUN apt-get update

RUN apt -y install curl
#RUN apt-get -y install gnupg
RUN apt-get -y install git

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt update && apt install nodejs -y

RUN npm i

RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee tee /etc/apt/sources.list.d/bazel.list
RUN curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
RUN apt-get update && apt-get -y install bazel
RUN apt-get upgrade -y bazel

RUN apt install -y python3-pip
RUN pip3 install absl-py

ENTRYPOINT [ "npm", "run", "build" ]