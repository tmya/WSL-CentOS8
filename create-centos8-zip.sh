#!/bin/bash

IMAGE_URL=https://cloud.centos.org/centos/8/x86_64/images/CentOS-8-Container-8.4.2105-20210603.0.x86_64.tar.xz
TEMP_CENTOS_FILE=centos8.tar.xz
TEMP_WORKDIR=work/

#Make working directory and download image.
mkdir -p ${TEMP_WORKDIR}
curl -L ${IMAGE_URL} -o ${TEMP_WORKDIR}${TEMP_CENTOS_FILE}

#Extract compressed file and pick a layer.tar to compress it.
LAYER_FILE=`tar tf ${TEMP_WORKDIR}${TEMP_CENTOS_FILE} | grep layer.tar`
tar xf ${TEMP_WORKDIR}${TEMP_CENTOS_FILE} -C ${TEMP_WORKDIR}
mv ${TEMP_WORKDIR}${LAYER_FILE} ${TEMP_WORKDIR}${TEMP_CENTOS_FILE%.*}
zip -v -m -j ${TEMP_CENTOS_FILE%%.*}.zip ${TEMP_WORKDIR}${TEMP_CENTOS_FILE%.*}
