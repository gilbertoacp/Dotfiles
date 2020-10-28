# Path to oh-my-zsh installation.
export ZSH="/home/gilberto/.oh-my-zsh"

export JAVA_HOME=/usr/lib/jvm/default

export PATH=$PATH:$JAVA_HOME/bin

export PATH=$PATH:/opt/gradle/gradle-6.7/bin

export ANDROID_SDK_ROOT=$HOME/Android/Sdk

export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin

export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion