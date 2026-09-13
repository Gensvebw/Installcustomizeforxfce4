#!/data/data/com.termux/files/usr/bin/bash

clear
sleep 2

echo -e "\e[34mThis Script is Installing Nord Theme\e[0m"
echo ""
echo -e "\e[34mThis Installation will required dev package neovim with lazyvim and git package\e[0m"
echo ""
echo -e "\e[34mMake sure you run this script at the same directory and run 'sh installforcustomize.sh' before continue\e[0m"

while true; do
  echo -e "\e[33mDo you want to continue? (y/n)\e[0m"
  read -p "> " answer

  case $answer in
  [yY] | [yY][eE][sS])
    break
    ;;
  [nN] | [nN][oO])
    echo -e "\e[34mExiting...\e[0m"
    exit 0
    ;;
  *)
    echo -e "\e[31mInvalid input. Please enter y or n\e[0m"
    ;;
  esac
done

echo -e "\e[34mInstalling Starship...\e[0m"

sleep 1

touch ~/.bashrc

echo 'eval "$(starship init bash)"' >>~/.bashrc

echo -e "\e[34mInstalling starship Nord theme...\e[0m"

sleep 1

mkdir -p ~/.config/

cp files/Starship/starship.toml ~/.config/

echo -e "\e[34mInstalling Neovim Theme...\e[0m"

sleep 1

mkdir -p ~/.config/nvim/lua/plugins

cp files/Neovim/colorscheme.lua ~/.config/nvim/lua/plugins

echo -e "\e[34mInstalling Lsd...\e[0m"

sleep 1

echo "alias ls='lsd --color auto'" >>~/.bashrc

echo -e "\e[34mInstalling batcat...\e[0m"

sleep 1

echo 'export BAT_THEME="Nord"' >>~/.bashrc

echo -e "\e[34mInstalling Wallpaper...\e[0m"

sleep 1

mv files/Wallpapers/ ~

echo -e "\e[34mInstalling Cava Theme...\e[0m"

sleep 1

mkdir -p ~/.config/cava

rm -f ~/.config/cava/config

cp files/Cava/config ~/.config/cava

echo -e "\e[34mInstalling Fastfetch Theme\e[0m"

sleep 1

fastfetch --gen-config </dev/null

rm -rf ~/.config/fastfetch/*

mkdir -p ~/.config/fastfetch

cp files/Fastfetch/* ~/.config/fastfetch/

echo -e "/e[34mInstalling Fonts/e[0m"

mkdir -p ~/.local/share/fonts

mv files/JetBrainsMono/*.ttf ~/.local/share/fonts/

cp -r files/Comic_Sans/*.ttf ~/.local/share/fonts/

cp files/EnvyCodeR/*.ttf ~/.local/share/fonts/

echo -e "\e[34mInstalling Rofi Theme\e[0m"

mkdir -p ~/.config/rofi/

cp files/Rofi/nord.rasi /data/data/com.termux/files/usr/share/rofi/themes/

echo -e "\e[34m Installing Themes, Icons and Cursors\e[0m"

mkdir -p ~/.local/share/themes/

mkdir -p ~/.local/share/icons/

mv files/Themes/* ~/.local/share/themes/

mv files/Icons/* ~/.local/share/icons/

cp -r files/Cursors/* ~/.local/share/icons/

echo -e "\e[34mDone!!!\e[0m"

echo -e "\e[34mYou can now type 'rofi-theme-selector' to select your theme which is nord\e[0m"
