#!/bin/bash
distri=`cat /etc/*release|egrep -oi "ubuntu|debian|centos|red|fedora"|head -1|cut -d= -f2|tr A-Z  a-z`
if [ $distri == "ubuntu" ] || [ $distri == "debian" ]
  then

 if [ $USER != "root" ]
   then

     sudo apt install zsh -y
     sudo apt install git -y
     sudo apt install wget -y
     cd ~
     curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
     sudo usermod --shell $(which zsh) $USER
     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
     sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.zshrc -O ~/.zshrc
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.vimrc -O ~/.vimrc
  else
     apt install zsh -y
     apt install git -y
     apt install wget -y
     cd ~
     curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
     sudo usermod --shell $(which zsh) $USER
     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
     git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.zshrc -O ~/.zshrc
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.vimrc -O ~/.vimrc
  fi
elif [ $distri == "fedora" ] || [ $distri == "centos" ]
  then
   if [ $USER != "root" ]
   then

     sudo yum install git -y
     sudo yum install zsh -y
     sudo yum install wget -y
     cd ~
     curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
     sudo usermod --shell $(which zsh) $USER
     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
     sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.zshrc -O ~/.zshrc
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.vimrc -O ~/.vimrc
   else
     yum zsh -y
     yum install git -y
     yum install wget -y
     cd ~
     curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
     sudo usermod --shell $(which zsh) $USER
     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
     git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.zshrc -O ~/.zshrc
     wget --no-check-certificate https://raw.githubusercontent.com/rsfernandes/termproduction/master/.vimrc -O ~/.vimrc
   fi  
fi
