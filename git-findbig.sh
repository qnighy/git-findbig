#!/usr/bin/env bash
set -ue -o pipefail
export LC_ALL=C

echo "sha1 size size-on-disk path"
join -a 1 \
  <(git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(objectsize:disk)' --batch-all-objects | grep '^blob' | cut -d ' ' -f 2- | sort -k1) \
  <(git rev-list --all --objects | sort -k1) \
  | sort -k2rn | head -n 10
