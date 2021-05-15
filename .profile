# editor 
export EDITOR='vim'

# terminal
export TERMINAL='kitty'

# qt
export QT_STYLE_OVERRIDE=kvantum

# zsh
export ZSH="/home/gilberto/.oh-my-zsh"

# java
export JAVA_HOME=/usr/lib/jvm/default
export PATH=$PATH:$JAVA_HOME/bin
export _JAVA_AWT_WM_NONREPARENTING=1

# gradle
export PATH=$PATH:$(echo /opt/gradle/gradle-*/bin)

# android
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# local scripts
export PATH=$HOME/.local/bin:$PATH
