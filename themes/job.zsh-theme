# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S

preexec () {
    printf "\n";
}

PROMPT='
%B%{$fg[cyan]%}%m%{$reset_color%}%b %B%{$fg[blue]%}%1/%{$reset_color%}%b $(git_prompt_info)%{$reset_color%}
 ⇨  '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
