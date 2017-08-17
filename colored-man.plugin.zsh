man() {
    local _mb _md _me _se _so _ue _us
    local -A style

    for cap ( mb md so se us ue me ); do
        zstyle -s :omz:plugins:colored-man $cap str
        eval "style[$cap]=$str"
    done

    env \
      LESS_TERMCAP_mb=${style[mb]}\
      LESS_TERMCAP_md=${style[md]}\
      LESS_TERMCAP_me=${style[me]}\
      LESS_TERMCAP_se=${style[se]}\
      LESS_TERMCAP_so=${style[so]}\
      LESS_TERMCAP_ue=${style[ue]}\
      LESS_TERMCAP_us=${style[us]}\
      PAGER=/usr/bin/less \
      _NROFF_U=1 \
      PATH=${HOME}/bin:${PATH} \
                     man "$@"
}
