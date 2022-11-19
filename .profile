export EDITOR="emacs"
export TERMINAL="/usr/bin/kitty"
export BROWSER="/usr/bin/google-chrome-stable"

export QT_QPA_PLATFORMTHEME=qt5ct

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export _JAVA_AWT_WM_NONREPARENTING=1

export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

export PATH=$PATH:$HOME/.config/composer/vendor/bin

export DOTNET_ROOT=/usr/share/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH=$DOTNET_ROOT:$PATH
export PATH=$HOME/.dotnet/tools:$PATH

export PATH=$HOME/.local/bin:$PATH

export GOPATH="$HOME/go"
export PATH=$GOPATH/bin:$PATH
