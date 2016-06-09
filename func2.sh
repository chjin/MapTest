#!/bin/sh
sum() {
  echo `expr $1 + $2`
}
echo "10 더하기 20을 실행합니다."
sum 10 20
exit 0


