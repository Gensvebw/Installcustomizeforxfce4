clear
sleep 2

echo ""
echo -e "\e[34mInstalling Package for Customize\e[0m"
echo ""

pkg update && pkg upgrade -y

pkg install git starship xfce4-terminal neovim lsd bat code-oss firefox cava fastfetch -y

git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git

echo ""
echo "\e[34mInstallation Complete, You may need to run 'nvim' command before continue\e[0m"
echo ""
