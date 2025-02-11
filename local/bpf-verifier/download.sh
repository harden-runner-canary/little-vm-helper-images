#!/bin/bash

kver="$1"

if [[ -z "$kver" ]]; then
    echo "usage: bash download.sh 5.15.168"
    exit 1
fi

out=$(echo "$kver" | sed "s/\./-/g")

wget -O "$out.c" "https://elixir.bootlin.com/linux/v$kver/source/kernel/bpf/verifier.c?raw"
