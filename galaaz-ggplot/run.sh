#!/bin/bash

print_this_dir() {
  (
    cd "$(dirname "$0")"
    pwd
  )
}

PROJECT_ROOT="$(
  cd "$(print_this_dir)/.."
  pwd
)"

docker run -it --rm \
  -v ${PROJECT_ROOT}:/graalvm-demos \
  --entrypoint /bin/bash graalvm-demos-galaaz:1
