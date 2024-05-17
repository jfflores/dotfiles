typeset -A __RAOULDUKE

__RAOULDUKE[ITALIC_ON]=$'\e[3m'
__RAOULDUKE[ITALIC_OFF]=$'\e[23m'

# Path to your oh-my-zsh installation.
export ZSH="/Users/raoulduke/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="flores"
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions tmuxinator docker)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/color

# Prompt
#
autoload -U colors
colors

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pip="pip3"
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/Users/raoulduke/Library/Python/3.8/bin/:$PATH"

source $(dirname $(gem which colorls))/tab_complete.sh

if [ -d "/usr/local/opt/ruby/bin" ]; then
  export PATH=/usr/local/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

#path+=(
#    $(ruby -e 'puts File.join(Gem.user_dir, "bin")')
#)
#PATH=$PATH:$(ruby -e 'puts Gem.bindir')

alias ls='colorls -lA --gs --sd --sf'

# Open nvim by default
alias vim="nvim"
alias vi="nvim"

# django alias
alias runserver="./manage.py runserver"
alias makemigrations="./manage.py makemigrations"
alias migrate="./manage.py migrate"
alias shell="./manage.py shell"
alias listen_nats="./manage.py listen_nats"

# docker alias
alias dockerlogs="docker compose logs -f"
alias dockerup="docker compose up -d"
alias dockerdown="docker compose down"
alias dockerrebuild="docker compose down; docker compose build"

source ~/.tmuxinator/tmuxinator.zsh

#
# Options
#
setopt AUTO_CD                 # [default] .. is shortcut for cd .. (etc)
setopt AUTO_PARAM_SLASH        # tab completing directory appends a slash
setopt NO_HIST_IGNORE_ALL_DUPS # don't filter non-contiguous duplicates from history
setopt HIST_FIND_NO_DUPS       # don't show dupes when searching
setopt LIST_PACKED             # make completion lists more densely packed
setopt MENU_COMPLETE           # auto-insert first possible ambiguous completion

# VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# Virtual Environment Wrapper
# source /usr/local/bin/virtualenvwrapper.sh

# Esta linha tem de ser a ultima
source /Users/raoulduke/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/sbin:$PATH"

#esta linha tem de vir depois de todas as alterações ao PATH
eval "$(pyenv init --path)"

# fuck off microsoft
export DOTNET_CLI_TELEMETRY_OPTOUT=1

alias luamake=/Users/raoulduke/code/lua-language-server/3rd/luamake/luamake
