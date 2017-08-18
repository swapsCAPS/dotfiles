cd ~/android/lineage
export USE_CCACHE=1
prebuilts/misc/linux-x86/ccache/ccache -M 50G
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

