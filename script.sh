#!/bin/bash

SOURCE_IMAGE=$1
TARGET_REGISTRY=$2
TARGET_IMAGE=$3

echo "copy image from $SOURCE_IMAGE to $TARGET_REGISTRY/$TARGET_IMAGE";

skopeo login -v \
    --username AWS \
    --password $(/usr/local/bin/aws ecr get-login-password) \
    $TARGET_REGISTRY;

skopeo copy \
    docker://$SOURCE_IMAGE \
    docker://$TARGET_REGISTRY/$TARGET_IMAGE;