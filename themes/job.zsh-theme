# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S
   
function job__preexec {
    printf "\n";
}
    
function job__precmd {
    printf "\n";
}

precmd_functions+=job__precmd
prexec_functions+=job__prexec

THIS_USER=""

if [ "$(whoami)" != "job" ] && [ "$(whoami)" != "james" ]; then
  THIS_USER="[$(whoami)] "
fi

get_sha_prompt() {
    __SHORT_SHA=$(git_prompt_short_sha)
    if [[ ! -z "$__SHORT_SHA" ]]; then
      echo " $ZSH_THEME_GIT_PROMPT_PREFIX($__SHORT_SHA)$ZSH_THEME_GIT_PROMPT_SUFFIX "
    fi
}

PROMPT=' ($?) ${THIS_USER}[%w %T] %B%{$fg[blue]%}%3d%{$reset_color%} $(git_prompt_info)$(get_sha_prompt)$(git_prompt_status)$(git_prompt_ahead)%{$reset_color%}${DESK_NAME}
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
