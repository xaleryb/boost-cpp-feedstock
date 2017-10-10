#!/bin/bash

set -x -e

. activate "${PREFIX}"

./b2 -q \
      python=${PY_VER} \
      -j${CPU_COUNT} \
      --with-python \
      cxxflags="${CXXFLAGS} -Wno-deprecated-declarations" \
      install | tee b2.install-py-${PY_VER}.log 2>&1
