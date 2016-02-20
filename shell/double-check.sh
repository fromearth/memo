#!/bin/sh
#############################################################
# 二重起動チェック
#
# @filename double-check
# @category Shell
# @package  ShellDoubleCheck
# @author   fromearth
# @link     https://github.com/fromearth
#############################################################



if [ $$ -ne $(pgrep -fo "$0") ]; then
  echo "起動中につき、停止します。"
  exit 1
fi
