#!/bin/bash
# https://www.taterli.com/9532/

. milkv/boardconfig-milkv-duo.sh
. build/${MV_BUILD_ENV}
defconfig ${MV_BOARD_LINK}

build_uboot || exit $?
build_kernel || exit $?
