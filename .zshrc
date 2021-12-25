
# Created by newuser for 5.8

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh-aliases

# Lines configured by zsh-newuser-install
 HISTFILE=~/.histfile
 HISTSIZE=1000
 SAVEHIST=1000
 setopt autocd nomatch notify
 unsetopt beep extendedglob
# # End of lines configured by zsh-newuser-install
# # The following lines were added by compinstall
 zstyle :compinstall filename '$HOME/.zshrc'
#
 autoload -Uz compinit
 compinit
# # End of lines added by compinstall
# # This will set the default prompt to the walters theme
#
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#
#
#
 zstyle ':completion:*' menu select
 setopt COMPLETE_ALIASES

 zstyle ':completion::complete:*' gain-privileges 1
#
# # create a zkbd compatible hash;
# # to add other keys to this hash, see: man 5 terminfo
 typeset -g -A key
#
 key[Home]="${terminfo[khome]}"
 key[End]="${terminfo[kend]}"
 key[Insert]="${terminfo[kich1]}"
 key[Backspace]="${terminfo[kbs]}"
 key[Delete]="${terminfo[kdch1]}"
 key[Up]="${terminfo[kcuu1]}"
 key[Down]="${terminfo[kcud1]}"
 key[Left]="${terminfo[kcub1]}"
 key[Right]="${terminfo[kcuf1]}"
 key[PageUp]="${terminfo[kpp]}"
 key[PageDown]="${terminfo[knp]}"
 key[Shift-Tab]="${terminfo[kcbt]}"
#
# # setup key accordingly
 [[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
 [[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
 [[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
 [[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
 [[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
 [[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
 [[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
 [[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
 [[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
 [[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
 [[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
 [[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete
#
# # Finally, make sure the terminal is in application mode, when zle is
# # active. Only then are the values from $terminfo valid.
 if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
   autoload -Uz add-zle-hook-widget
       function zle_application_mode_start { echoti smkx }
           function zle_application_mode_stop { echoti rmkx }
               add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
                   add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
                   fi


                   key[Control-Left]="${terminfo[kLFT5]}"
                   key[Control-Right]="${terminfo[kRIT5]}"

                   [[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
                   [[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word
                source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#                   # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
                   [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#                   
export PATH="$HOME/.local/bin:$PATH"


export RANGER_LOAD_DEFAULT_RC=FALSE
export SPICETIFY_INSTALL="$HOME/spicetify-cli"
  export PATH="$SPICETIFY_INSTALL:$PATH"
  export MOZ_ENABLE_WAYLAND=1 
  
export PATH=$HOME/.config/rofi/bin:$PATH


#source ~/.powerlevel10k/powerlevel10k.zsh-theme
