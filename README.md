# TensorVogel

## My personalized Docker configuration for running TensorFlow experiments

## Usage instructions

### Build docker image

        docker build -t tensorvogel .

### Create docker container running Jupyter notebook in a mounted drive for persistence

        nvidia-docker run -it -v /drive/location:/Persistent -p 8888:8888 tensorvogel

Or:

        docker run --runtime=nvidia -it -v /drive/location:/Persistent -p 8888:8888 tensorvogel

### Create interactive container with a mounted drive for persistence

        nvidia-docker run -it -v /drive/location:/Persistent -p 8888:8888 tensorvogel bash

Or:

        docker run --runtime=nvidia -it -v /drive/location:/Persistent -p 8888:8888 tensorvogel bash