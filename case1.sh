#!/bin/sh
case "$1" in
  start)
    echo "시작합니다.";;
  stop)
    echo "중지합니다.";;
  restart)
    echo "다시 시작합니다.";;
  *)
    echo "I don't know exactly";;
esac
exit 0

