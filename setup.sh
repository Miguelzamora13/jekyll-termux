echo Jekyll termux installer
read -p "Do you want to replace the bashrc \(recommended\)" a
if [[ $a = "y" ]]
 then
  if [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.bak
  fi
  cp bashrc ~/.bashrc
fi
unset a

read -p "Install required packages ? \(about 70mb total in size use if you want to view the page locally\)" a
if [[ $a == "y" ]]
 then
  apt install -y ruby-dev llvm libffi-dev python git bash-completion
  gem install jekyll
fi
unset a
read -p "Do you want to setup ssh now ? \(y/n\)" a
if [[ $a == "y" ]]
 then
  unset a
  ./setup_ssh.sh
fi

