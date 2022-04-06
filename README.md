# set-work-env




## 1. Install iTerms2
```
https://iterm2.com/
```

## 2. Install zsh & on-my-zsh
```
brew install zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
``` 

## 3. Apply color theme

https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/README.md

1. Click on Color Presets
2. Copy the download url of clicked color preset
3. Download itermcolors file
```
curl -LO the download url of clicked color preset
``` 

## 4. Change theme

1. ZSH_THEME = agnoster in .zshrc
2. source .zshrc

## 5.Change font
1. Open preference using command + i 
2. Change font you want..


## 6. Delete user name in terminal

Add below code in zshrc

```shell
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
```

## 7. Apply New line

1. vi ~/.oh-my-zzh/themes/agnoster.zsh-theme
2. Add "prompt_newline" between prompt_hg and prompt_end in function build_prompt()
3. Copy below prompt_newline function & Paste in agnoster.zsh-theme file
```
prompt_newline() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{%k%F{blue}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi

  echo -n "%{%f%}"
  CURRENT_BG=''
}
```


## 8. Apply Syntax highlight

```
brew install zsh-syntax-highlighting
```

add below code in ~/.zshrc
```
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```
