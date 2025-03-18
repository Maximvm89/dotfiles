# Add these lines to your ~/.cshrc.mine file on the linux grace machines...
# don't worry too much about what they mean.

# Colors!
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}" # This is needed at the end... :(

# Setting the actual prompt.  I made two separate versions for you to try, pick
# whichever one you like better, and change the colors as you want.  Just don't
# mess with the ${end} guy in either line...  Comment out or delete the prompt you don't use.

set prompt="${green}%n${blue}@%m ${white}%~ ${green}%%${end} "
set prompt="[${green}%n${blue}@%m ${white}%~ ]${end} "
set prompt="[${blue}%m@${white}%P %c ]${end}"

# Clean up after ourselves...
unset red green yellow blue magenta cyan yellow white end
#### ALIASES ####

alias asu analyseSoftwareUse
alias sshvfx ssh sys2261.ldn.vfx
alias sshshared ssh sys-vm0019.ldn
alias sshgitlab ssh piperun01s.ldn
alias pycharm_loc /net/code/workspaces/mparisi/pycharm/pycharm-community-2021.1.1/bin/pycharm.sh
alias pycharm "module load pycharm-community/2022.3.2;module load job-fscfc;pycharm.sh $argv:q"
alias fish "setenv LD_LIBRARY_PATH /net/code/workspaces/vviperin/open-source/fish-shell/lib; /net/code/workspaces/vviperin/open-source/fish-shell/build/fish"
alias ws "cd /net/code/workspaces/mparisi/git"
alias scratch "cd /net/code/workspaces/mparisi/git/scratch"
alias devel "module load /net/sw/global/show/usesDefaultOsTools-fc/pythonessentials-devel/latest/modules/pythonessentials-devel/3.7 && setenv EDITOR nvim"
alias convert1 "pl2to3 -f print -wn ."
alias convert2 "pl2to3 -wn ."
alias convert3 "pl2to3 -f next -wn ."

alias search_python 'set dir=\!:1; set sword=\!:2; find -L $dir -name "*.py" -print0 | xargs -0 grep -in --color "$sword"'

# Useful aliases, be careful not to override existing command line tools
alias ldncp 'rsync -av $USER@hotel.ldn.vfx:\!:1 \!:2' # Copy files from the ldn site
alias ldncpshared 'rsync -av $USER@hotel.ldn:\!:1 \!:2' # Copy files from the ldn site
alias mtlcp 'rsync -av $USER@hotel.mtl.vfx:\!:1 \!:2' # Copy files from the mtl site
alias nyccp 'rsync -av $USER@hotel.nyc.vfx:\!:1 \!:2'
alias pnecp 'rsync -av $USER@hotel.pne.vfx:\!:1 \!:2'
alias mumcp 'rsync -av $USER@hotel.mum.vfx:\!:1 \!:2'
alias melcp 'rsync -av $USER@hotel.mel.vfx:\!:1 \!:2'
alias vancp 'rsync -av $USER@hotel.van.vfx:\!:1 \!:2'

alias tmux "tmux -2"

module load /net/global/opt/pipeline/terminaltools/terminaltools.module
### adding Custom PATH
# Check if the OS is CentOS 7
if (`uname -r` =~ *el7*) then
    # If it's CentOS 7, set environment variable(s)
    setenv PATH /net/code/workspaces/mparisi/git/.cargo/bin\:/net/code/workspaces/mparisi/git/ripgrep\:/net/code/workspaces/mparisi/git/lazygit\:/net/code/workspaces/mparisi/git/nvim-el7/bin\:/net/code/workspaces/mparisi/builds/git\:$PATH
    setenv EDITOR nvim
else
    # Otherwise, do something else
    setenv PATH /net/code/workspaces/mparisi/git/delta\:/net/code/workspaces/mparisi/git/ripgrep\:/net/code/workspaces/mparisi/git/lazygit\:/net/code/workspaces/mparisi/git/neovim/nvim-linux64/bin\:/net/code/workspaces/mparisi/git/myvim/bin\:/net/code/workspaces/mparisi/builds/git\:$PATH
endif

# Limit history to prevent file bloat
set history = 1000


set filec
set autolist
set nobeep

