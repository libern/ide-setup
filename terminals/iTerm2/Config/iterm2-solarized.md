# Preview
![Solarized](http://oi63.tinypic.com/ipcuax.jpg)

# How to install

## iTerm2

- [Download](http://www.iterm2.com/downloads.html) and install iTerm2 (it has better color fidelity than the built in Terminal).
    
Get the iTerm color settings

- [Libern Solarized Dark theme](https://raw.githubusercontent.com/libern/ide-setup/master/terminals/iTerm2/Color Presets/Libern Solarized Dark.itermcolors)
- [Solarized Dark theme](https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors)
- [Solarized Light theme](https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Light.itermcolors)
- [More themes @ iterm2colorschemes](http://iterm2colorschemes.com/)
    
Just save it somewhere and open the file(s). The color settings will be imported into iTerm2. Apply them in iTerm through iTerm -> preferences -> profiles -> colors -> load presets. You can create a different profile, other than Default if you wish to do so.

# Oh my zsh 

More info here: https://github.com/robbyrussell/oh-my-zsh

## Install with curl
    
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
When the installation is done, edit `~/.zshrc` and set `ZSH_THEME="agnoster"`

## Change Oh My Zsh Theme

[Bullet Train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme)

## Install a patched font

- [Meslo](https://github.com/Lokaltog/powerline-fonts/blob/master/Meslo/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.otf) (the one in the screenshot). Click "view raw" to download the font.
- [Others @ powerline fonts](https://github.com/powerline/fonts)
    
Open the downloaded font and press "Install Font".

Set this font in iTerm2 (14px is my personal preference) (iTerm -> Preferences -> Profiles -> Text -> Change Font).

Restart iTerm2 for all changes to take effect.

# Further tweaking

Things like

- auto suggestions
- word jumping with arrow keys
- shorter prompt style
- syntax highlighting

can be found in the section below.

## History Search

[zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

Then add into file `~/.zshrc`, somewhere below the line that read source `$ZSH/oh-my-zsh.sh`.

```
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
```

Save and fire up a new terminal or run `source ~/.zshrc` in the current terminal.

## Auto suggestions (for oh-my-zsh)

![Auto suggestions](http://i66.tinypic.com/b5i9dv.png)

Just follow these steps: https://github.com/tarruda/zsh-autosuggestions#oh-my-zsh

If the auto suggestions do not appear to show, it could be a problem with your color scheme. Under "iTerm -> Preferences -> Colors tab", check the value of Black Bright, that is the color your auto suggestions will have. It will be displayed on top of the Background color, so if there is not enough contrast between the two, you won't see the suggestions, even if they're actually there.. For Solarized Dark I changed the value of Black Bright to "586e75".

## Enable word jumps

By default, word jumps (option + → or ←) do not work. To enable these, go to "iTerm -> Preferences -> Profiles -> Keys". Press the + sign under the list of key mappings and add the following sequences:

### Option + right

```
⌥→
Send Escape Sequence
f
```

### Option + left

```
⌥←
Send Escape Sequence
b
```

## Shorter prompt style

By default, your prompt will now show “user@hostname” in the prompt. This will make your prompt rather bloated. Optionally set `DEFAULT_USER` in `~/.zshrc` to your regular username (these must match) to hide the “user@hostname” info when you’re logged in as yourself on your local machine. You can check your username value by executing `whoami` in the terminal.

## Syntax highlighting

```
brew install zsh-syntax-highlighting
```

If you do not have or do not like homebrew, follow [the installation instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) instead.

After installation through homebrew, add

```
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

to **the end** of your `.zshrc` file. After that, it's best to restart your terminal. Sourcing your `~/.zshrc` does not seem to work well with this plugin.
