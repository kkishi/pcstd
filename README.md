# Setup

Compile bits/stdc++.h:

```console
$ ./init.sh
compiling with: --std=c++17 -O2
compiling with: --std=c++17 -g
compiling with: --std=c++17 -pg
```

Add this to .bashrc:

```sh
export CPLUS_INCLUDE_PATH="/path/to/pcstd"
```

Next time you compile code that includes bits/stdc++.h, it will use the
precompiled version.
