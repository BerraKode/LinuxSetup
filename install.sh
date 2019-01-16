
#!/bin/bash
 
#sudo apt install zsh

echo $SHELL

#wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

#cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
#source ~/.zshrc

#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo
echo
echo
echo "$(tput setaf 0) $(tput setab 5)================= INSTALL PIP AND I3 THEMER =====================$(tput sgr0)"
echo
echo
echo

sudo apt-get install python-pip

cd ~/.config 
git clone https://github.com/unix121/i3wm-themer
cd i3wm-themer/
sudo pip install -r requirements.txt


cat <<EOF > ~/.Xdefaults
! Cursor theme
xcursor.theme:            Vanilla-DMZ

! URxvt config
URxvt*termName:           rxvt

URxvt.font: xft:DejaVu Sans Mono
URxvt.letterSpace: -1

urxvt*depth: 32

URxvt.scrollBar:          off
URxvt.internalBorder:     0
URxvt*selectToClipboard:  true
URxvt*saveLines:          10000

URxvt.urlLauncher:        /usr/bin/google-chrome
URxvt.matcher.button:     1
URxvt.tabbed.tabbar-fg:   8
URxvt.tabbed.tabbar-bg:   0
URxvt.tabbed.tab-fg:      2
URxvt.tabbed.tab-bg:      0
URxvt.tabbed.new-button:  no
URxvt.tabbed.title:       no

urxvt*foreground:       #cccccc
urxvt*fading:           50
urxvt*fadeColor:        #000000

Xft*dpi:                96
Xft*antialias:          true
Xft*hinting:            full

urxvt*background:       rgba:0000/0000/0000/cccc

URxvt.transparent:   true
URxvt.tintColor:     white
URxvt.shading:       15
EOF

#echo
#echo
#echo
#echo "$(tput setaf 0) $(tput setab 5)================= POLYBAR DEPENDENCIES =====================$(tput sgr0)"


#sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev


#sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="berra"/' ~/.zshrc

#cat <<EOF > ~/.oh-my-zsh/themes/berra.zsh-theme
#local_ret_status="%(?:%{$fg_bold[green]%} ^~^| :%{$fg_bold[red]%} ^~^| )"
#PROMPT="$fg_bold[magenta]%c :%{$reset_color%} $(git_prompt_info)"

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%} ^|^w"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
#EOF

#sed -i 's/#Global Order: zshenv, zprofile, zshrc, zlogin/export PATH=$PATH:/sbin/' ~/env/zsh/zshenv

#sed -i 's/.*github.*//g' ~/.zshrc
#sed -i 's/.*plugins=(.*//g' ~/.zshrc

#sed -i 's/git/plugins=(\n  zsh-autosuggestions\n  zsh-syntax-highlighting\n  git/' ~/.zshrc

echo
echo
echo
echo  "$(tput setaf 0) $(tput setab 5)================= AFTER INSTALLATION ====================="
#echo "1. Add this to i3 config: exec_always --no-startup-id $HOME/.config/polybar/launch.sh"
echo "1. Set urxvt as standard term in i3 config"
echo "2. Change in i3 config so mouse wont change active window"
echo "3. Set i3-lock-fancy as lock command shift+super+l in i3 config"
echo "4. Copy stupid wallpaper folder from i3wm-theme folder to wherever they want it this time"
echo "5. Change color scheme to #0a0a0a and #fff"
echo "$(tput sgr0)"
