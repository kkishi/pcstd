#!/bin/bash

set -e

mkdir -p bits/stdc++.h.gch
cd bits/stdc++.h.gch
echo '#include <bits/stdc++.h>' > stdc++.h
rm -f *.h.gch

function compile {
  echo "compiling with: $@"
  name=$(echo "$@" | md5sum | cut -d ' ' -f 1)
  g++ $@ stdc++.h -o $name.h.gch
}

compile --std=c++23 -O2
compile --std=c++23 -g -fsanitize=address,undefined
compile --std=c++23 -pg
