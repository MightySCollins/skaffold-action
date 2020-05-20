#!/bin/sh -l

if [ -n "${IMAGE_TAG}" ]; then 
    echo "IMAGE_TAG: ${IMAGE_TAG}"
    IMAGE_TAG=$(echo ${IMAGE_TAG} | sed -e "s/refs\/heads\///g")
    IMAGE_TAG=$(echo ${IMAGE_TAG} | sed -e "s/refs\/tags\///g" | sed -e "s/\//-/g") 
    echo "IMAGE_TAG: ${IMAGE_TAG}"
    SKAFFOLD_TAG=${IMAGE_TAG}
fi 

sh -c "skaffold ${INPUT_SKAFFOLD}"
