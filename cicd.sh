#!/bin/bash

set -e

CICD_COMMON_VERSION="v2.0"

export CLASS_LIBRARY_PROJ_DIR=src/Otc.ComponentModel.Annotations/src
export TEST_PROJ_DIR=src/Otc.ComponentModel.Annotations/tests

cd $TRAVIS_BUILD_DIR

wget -q https://raw.githubusercontent.com/OleConsignado/otc-cicd-common/$CICD_COMMON_VERSION/cicd-common.sh -O ./cicd-common.sh
chmod +x ./cicd-common.sh

./cicd-common.sh $@
