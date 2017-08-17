# zsh-colored-man

This is based on the [colored-man-pages][1] plugin from [oh-my-zsh][2], packaged as a zsh plugin to be used with your favorite zsh plugin manager.

[1]: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/colored-man-pages/colored-man-pages.plugin.zsh
[2]: https://github.com/robbyrussell/oh-my-zsh
[3]: http://zsh.sourceforge.net/

## Requirements

* [ZSH][3] >= 4.3.0

## Install

### antigen

    antigen bundle twang817/zsh-colored-man

### zgen

    zgen load twang817/zsh-colored-man
    
### antibody

    antibody bundle twang817/zsh-colored-man
    
## Configuration

You can configure teh colors that are used by the plugin by adding this code somewhere in your `.zshrc`:

```
() {
gi    local context=:omz:plugins:colored-man
    zstyle $context mb '$fg_bold[white]'
    zstyle $context md '$fg_bold[white]'
    zstyle $context me '$reset_color'
    zstyle $context se '$reset_color'
    zstyle $context so '$fg_bold[green]$termcap[us]'
    zstyle $context ue '$reset_color'
    zstyle $context us '$fg_bold[cyan]'
}
```
