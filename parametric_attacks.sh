#!/usr/bin/env bash

ks=( 20 )
top_grads=( 64 128 256 512 )
as=( 2 )

for k in ${ks[@]}; do
  for grad in ${top_grads[@]}; do
    for a in ${as[@]}; do
      python3 main.py --top_grads=$grad --k=$k --a=$a --delete_attacks=true
    done
  done
done

