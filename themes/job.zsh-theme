# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S
   
function preexec {
    printf "\n";
}
    
function precmd {
    printf "\n";
}

PROMPT=' [%w %T] %B%{$fg[blue]%}%3d%{$reset_color%} $(git_prompt_info) $(git_prompt_status)$(git_prompt_ahead)%{$reset_color%}
 $ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

git_status_indication() {
    local GIT_STATUS_PREFIX="%{$fg[green]%}"
    local GIT_STATUS_SUFFIX="$ZSH_THEME_GIT_PROMPT_SUFFIX"
    echo "${GIT_STATUS_PREFIX}$1${GIT_STATUS_SUFFIX} "
}

ZSH_THEME_GIT_PROMPT_AHEAD="$(git_status_indication ⇥)"
ZSH_THEME_GIT_PROMPT_MODIFIED="$(git_status_indication ±)"
ZSH_THEME_GIT_PROMPT_ADDED="$(git_status_indication a)"