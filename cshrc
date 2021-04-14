#!/usr/bin/tcsh -f

if ($uid > 199 && "`/usr/bin/id -gn`" == "`/usr/bin/id -un`") then
  umask 002 
else
  umask 022 
endif

# Colors!
set     red="%{\033[38;5;196m%}"
set   green="%{\033[38;5;40m%}"
set  yellow="%{\033[38;5;229m%}"
set    blue="%{\033[38;5;27m%}"
set    cyan="%{\033[38;5;45m%}"
set   white="%{\033[38;5;255m%}"
set     end="%{\033[0m%}" # This is needed at the end...

if ($?prompt) then
  if ($?tcsh) then
    #set promptchars='$#'
    #set prompt='[%n@%m %c]>>>${end}%# '
    set prompt="${red}%T ${yellow}%d-%D%w%Y ${green}%n@%m ${cyan}%c\n${white}>>>${end} "
    # make completion work better by default
    set autolist
  else
    set prompt=\[$user@`hostname -s`\]\$\ 
    #set prompt="${red}%T ${yellow}%d-%D%w%Y ${green}%n@%m ${cyan}%c\n${white}>>>${end} "
  endif                                                                                                                                                
endif
  
if ($?prompt) then
  if ($?TERM) then
    switch($TERM)
      case xterm*:
        if ($?tcsh) then
          set prompt="${red}%T ${yellow}%d-%D%w%Y ${green}%n@%m ${cyan}%c\n${white}>>>${end} "
        endif
        breaksw
      case screen:
        if ($?tcsh) then
          #set prompt='%{\033k%n@%m:%c\033\\%} %n@%m %c >>>${end} '
          set prompt="${red}%T ${yellow}%d-%D%w%Y ${green}%n@%m ${cyan}%c\n${white}>>>${end} "
        endif
        breaksw
      default:
        breaksw
    endsw
  endif
endif

if (! $?loginsh) then
  if ( -d /etc/profile.d ) then
    set nonomatch
    foreach i ( /etc/profile.d/*.csh )
      if ( -r "$i" ) then
        if ($?prompt) then
          source "$i"
        else
          source "$i" >&/dev/null
        endif
      endif
    end
    unset i nonomatch
  endif
endif

if ( $?tcsh ) then
  bindkey "^[[3~" delete-char
endif

bindkey "^R" i-search-back
bindkey '\t' history-search-backward

set echo_style = both
set histdup = erase
set savehist = (1024 merge)

setenv LS_COLORS "di=96:fi=0:ln=93:pi=5:so=5:bd=5:cd=5:or=101:mi=101:ex=92:*.v=35:*.vg=35:*.gv=35:*.tcl=35:*.scm=35:*.mgm=35:*.mky=35:*.pt=35"
setenv LANG C
setenv NO_AT_BRIDGE 1

source ~/.alias.csh
