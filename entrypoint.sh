#!/bin/bash
# -*- mode: shell-script -*-

set -eu  # <= 0以外が返るものがあったら止まる, 未定義の変数を使おうとしたときに打ち止め

deluser `id -nu ${USER_ID} 2> /dev/null` &> /dev/null || true

adduser -D -u $USER_ID -g $GROUP_ID -s /bin/bash ${USER}

su-exec ${USER} ssh "$@"
