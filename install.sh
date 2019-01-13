
###!/bin/zsh ###
 
sudo apt install zsh

echo $SHELL

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cat <<EOF > ~/.Xdefaults
! Cursor theme
xcursor.theme:            Vanilla-DMZ

! URxvt config
URxvt*termName:           rxvt

URxvt.font: 9x15bold
URxvt.letterSpace: -1

urxvt*depth: 32
urxvt*background: rgba:0000/0000/0200/c800

URxvt.scrollBar:          off
URxvt.internalBorder:     0
URxvt*selectToClipboard:  true
URxvt*saveLines:          10000

#URxvt.perl-ext-common:    default,matcher,tabbedex,searchable-scrollback
URxvt.urlLauncher:        /usr/bin/google-chrome
URxvt.matcher.button:     1
URxvt.tabbed.tabbar-fg:   8
URxvt.tabbed.tabbar-bg:   0
URxvt.tabbed.tab-fg:      2
URxvt.tabbed.tab-bg:      0
URxvt.tabbed.new-button:  no
URxvt.tabbed.title:       no

urxvt*background:       #000000
urxvt*foreground:       #cccccc
#urxvt*fading:           50
#urxvt*fadeColor:        #000000

Xft*dpi:                96
Xft*antialias:          true
Xft*hinting:            full

urxvt*background:       rgba:0000/0000/0000/cccc

URxvt.transparent:   true
URxvt.tintColor:     white
URxvt.shading:       30 
 
! Tango color palette
URxvt*background:         #2e3436
URxvt*foreground:         #eeeeec
URxvt*cursorColor:        #8ae234
! foreground color for underline
URxvt*colorUL:            #8ae234
! line color for underline
URxvt*underlineColor:     #92659a
! black dark/light
URxvt*color0:             #2e3436
URxvt*color8:             #6e706b
! red dark/light
URxvt*color1:             #cc0000
URxvt*color9:             #ef2929
! green dark/light
URxvt*color2:             #4e9a06
URxvt*color10:            #8ae234
! yellow dark/light
URxvt*color3:             #edd400
URxvt*color11:            #fce94f
! blue dark/light
URxvt*color4:             #3465a4
URxvt*color12:            #729fcf
! magenta dark/light
URxvt*color5:             #92659a
URxvt*color13:            #c19fbe
! cyan dark/light
URxvt*color6:             #07c7ca
URxvt*color14:            #63e9e9
! white dark/light
URxvt*color7:             #d3d7cf
URxvt*color15:            #eeeeec
EOF

echo  "\n \n \n$(tput setaf 0) $(tput setab 5)================= POLYBAR DEPENDENCIES ====================="


sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev


sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="berra"/' ~/.zshrc

cat <<EOF > ~/.oh-my-zsh/themes/berra.zsh-theme
local_ret_status="%(?:%{$fg_bold[green]%} ^~^| :%{$fg_bold[red]%} ^~^| )"
PROMPT="$fg_bold[magenta]%c :%{$reset_color%} $(git_prompt_info)"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%} ^|^w"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
EOF

sed -i 's/#Global Order: zshenv, zprofile, zshrc, zlogin/export PATH=$PATH:/sbin/' ~/env/zsh/zshenv

sed -i 's/.*github.*//g' ~/.zshrc
sed -i 's/.*plugins=(.*//g' ~/.zshrc

sed -i 's/git/plugins=(\n  zsh-autosuggestions\n  zsh-syntax-highlighting\n  git/' ~/.zshrc

echo  "\n \n \n$(tput setaf 0) $(tput setab 5)================= AFTER INSTALLATION ====================="
echo '1.'

