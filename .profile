##Cmatrix thing
alias matrix='cmatrix -s -C cyan'

# Replace vim with nvim
alias vim='nvim'

# Replace htop with btop
alias htop='btop'

# Replace spotify with adblock
alias spotify='env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify %U'

# Replace ls with exa
alias ls='lsd --group-dirs=first' # preferred listing
alias la='lsd -a --group-dirs=first'  # all files and dirs
alias ll='lsd -lh --group-dirs=first'  # long format
alias lla='lsd -lha --group-dirs=first' # tree listing
alias l='lsd --group-dirs=first'

#Replace cat with bat
alias cat='bat --theme Nord'
alias catnl='bat --theme Nord --paging=never'

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#available free memory
alias free="free -mt"

#continue download
alias wget="wget -c"

#readable output
alias df='df -h'

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#Pacman for software managment
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias pacinstalled='grep "\(upgraded\|installed\) $pkg" /var/log/pacman.log'

#rsync backup
alias backup='sudo rsync -arAXv --delete --timeout=300 --exclude-from="/home/pr0x/.rsync/exclude" / pr0x@nasty:/volume1/Backup/manual'
alias backupdotfiles='rsync -arAXv --delete --timeout=300 --files-from="/home/pr0x/.rsync/dotfiles" / pr0x@nasty:/volume1/Backup/dotfiles'

#grub update
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'

#get fastest mirrors in your neighborhood
alias reft='sudo systemctl enable reflector.service reflector.timer && sudo systemctl start reflector.service reflector.timer'

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

#Bash aliases
alias mkfile='touch'
#alias thor='sudo thunar'
alias reload='cd ~ && source ~/.zshrc'
alias pingme='ping -c64 github.com'
alias cls='clear && neofetch'
alias traceme='traceroute github.com'

#hardware info --short
alias hw="hwinfo --short"

#youtube-dl
alias ytv-best='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --merge-output-format mp4 '
alias ytv-audio='yt-dlp -x --audio-format mp3 '

#GiT  command
alias gc='git clone '

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scp='sudo cp'
alias scpd='sudo cp -R'

#vim
alias bashrc='sudo vim ~/.bashrc'
alias nsddm='sudo vim /etc/sddm.conf'
alias pconf='sudo vim /etc/pacman.conf'
alias mkpkg='sudo vim /etc/makepkg.conf'
alias ngrub='sudo vim /etc/default/grub'
alias smbconf='sudo vim /etc/samba/smb.conf'
alias nmirrorlist='sudo vim /etc/pacman.d/mirrorlist'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#shutdown or reboot
alias sr="sudo reboot"
alias ssn="sudo shutdown now"

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

