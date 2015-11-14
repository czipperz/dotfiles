local returny
if [ "${ret_status}" = 0 ]; then
    returny=""
else
    returny="%(?::%{$fg[red]%}%S%s%?%{$reset_color%} )"
fi
PROMPT='${returny}%{$fg_bold[cyan]%}%~ %{$fg_bold[white]%}$(git_prompt_info)$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[white]%}"
