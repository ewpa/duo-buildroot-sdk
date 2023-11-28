#!/bin/bash
# https://www.taterli.com/9532/

rm -f linux_5.10/build/cv1800b_milkv_duo_sd/.config

. milkv/boardconfig-milkv-duo.sh
. build/${MV_BUILD_ENV}
defconfig ${MV_BOARD_LINK}

build_uboot || exit $?
build_kernel || exit $?
