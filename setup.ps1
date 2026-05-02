# git clone --recurse-submodules https://github.com/libxse/commonlibsse-ng-template
# cd commonlibsse-ng-template
xmake f -c --toolchain=clang-cl
xmake build
xmake project -k compile_commands