PROMPT='$(git_prompt_info)%{$fg_bold[green]%}%c'
PROMPT+="%(?:%{$fg_bold[green]%} >:%{$fg_bold[red]%} >)%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

