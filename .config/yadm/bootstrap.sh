#! /bin/bash
echo "Haiii welkom bij de installer."
echo "Ik ga hier effe sudo echo doen zodat je niet meer je wachtwoord hoeft in te voeren"
sudo echo "Het werkt!"
clear
echo "                                                                     "
echo "                                                                     "
echo "   ,---,                         ___                 ,--,    ,--,    "
echo ",\`--.' |                       ,--.'|_             ,--.'|  ,--.'|    "
echo "|   :  :      ,---,            |  | :,'            |  | :  |  | :    "
echo ":   |  '  ,-+-. /  | .--.--.   :  : ' :            :  : '  :  : '    "
echo "|   :  | ,--.'|'   |/  /    '.;__,'  /    ,--.--.  |  ' |  |  ' |    "
echo "'   '  ;|   |  ,\"' |  :  /\`./|  |   |    /       \\ '  | |  '  | |    "
echo "|   |  ||   | /  | |  :  ;_  :__,'| :   .--.  .-. ||  | :  |  | :    "
echo "'   :  ;|   | |  | |\\  \\    \`. '  : |__  \\__\\/: . .'  : |__'  : |__  "
echo "|   |  '|   | |  |/  \`----.   \\|  | '.'| ,\" .--.; ||  | '.'|  | '.'| "
echo "'   :  ||   | |--'  /  /\`--'  /;  :    ;/  /  ,.  |;  :    ;  :    ; "
echo ";   |.' |   |/     '--'.     / |  ,   /;  :   .'   \\  ,   /|  ,   /  "
echo "'---'   '---'        \`--'---'   ---\`-' |  ,     .-./---\`-'  ---\`-'   "
echo "                                        \`--\`---'                     "
echo "                                                                     "

if command yay --version &>/dev/null; then
  yay -Syu --noconfirm --needed \
    extra/nextcloud-client \
    extra/flatpak \
    extra/discover \
    aur/zen-browser-bin \
    extra/kitty \
    extra/github-cli \
    extra/vlc \
    extra/libreoffice-fresh \
    extra/partitionmanager \
    extra/obs-studio \
    extra/kdialog \
    extra/broot \
    extra/ttf-cascadia-mono-nerd \
    extra/neovim \
    extra/lazygit \
    extra/tree-sitter-cli \
    extra/fzf \
    extra/ripgrep \
    extra/npm \
    extra/luarocks \
    extra/fisher \
    aur/localsend-bin \
    extra/python-pipx \
    extra/python-typer \
    aur/python-pick \
    extra/code \
    extra/wget
else
  echo "Yay niet gevonden :("
  echo "Dus ik ga yay installeren :)"

  sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

  echo "en de een twee daar gaan we weer opnieuw!"

  yadm bootstrap

  exit

fi
echo "🎉 Installatie van programmas is voltooid!"

sleep 1
echo "___  ____                _          __  __ "
echo "|  \\/  (_)              | |        / _|/ _|"
echo "| .  . |_ ___  ___   ___| |_ _   _| |_| |_ "
echo "| |\\/| | / __|/ __| / __| __| | | |  _|  _|"
echo "| |  | | \\__ \\ (__  \\__ \\ |_| |_| | | | |_ "
echo "\\_|  |_/_|___/\\___| |___/\\__|\\__,_|_| |_(_)"
echo "                                           "
echo "                                           "

echo "🟦 Bluetooth instellen..."
sudo systemctl enable bluetooth
sudo systemctl start bluetooth
echo "🟦 bluetooth klaar!"

echo "📦 Flathub instellen.."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "📦 Dingen installeren met flatpak..."
flatpak install -y --noninteractive --or-update org.gnome.World.Iotas

echo "🐮 Broot instellen..."
broot --install
fish -c "broot --install"
touch ~/.config/broot/peronal.hjson

echo "🐟 Fish instellen..."
fish -c "fisher install catppuccin/fish"
fish -c "alias --save yippie=yay"

echo "🐱 Kitty thema instellen..."
kitty +kitten themes --reload-in=all Catppuccin-Mocha

echo "🐍 pipx instellen..."
pipx ensurepath
echo "🐍 pipx autocompleet..."
eval "$(register-python-argcomplete pipx)"
fish -c "register-python-argcomplete --shell fish pipx >~/.config/fish/completions/pipx.fish"

echo "🐍 Dingen met pipx installeren"
pipx install snowmachine

echo "🖌️ KDE Thema instellen..."
git clone --depth=1 https://github.com/catppuccin/kde /tmp/bootstrap.d/theme/kde
/tmp/bootstrap.d/theme/kde/install.sh 1 4 1 auto




echo ""

echo ""
echo "                                                        ,---,  "
echo "       ,--.                                          ,\`--.' |  "
echo "   ,--/  /|  ,--,                                    |   :  :  "
echo ",---,': / ',--.'|                                    '   '  ;  "
echo ":   : '/ / |  | :                             __  ,-.|   |  |  "
echo "|   '   ,  :  : '                           ,' ,'/ /|'   :  ;  "
echo "'   |  /   |  ' |     ,--.--.      ,--.--.  '  | |' ||   |  '  "
echo "|   ;  ;   '  | |    /       \\    /       \\ |  |   ,''   :  |  "
echo ":   '   \\  |  | :   .--.  .-. |  .--.  .-. |'  :  /  ;   |  ;  "
echo "|   |    ' '  : |__  \\__\\/: . .   \\__\\/: . .|  | '   \`---'. |  "
echo "'   : |.  \\|  | '.'| ,\" .--.; |   ,\" .--.; |;  : |    \`--..\`;  "
echo "|   | '_\\.';  :    ;/  /  ,.  |  /  /  ,.  ||  , ;   .--,_     "
echo "'   : |    |  ,   /;  :   .'   \\;  :   .'   \\---'    |    |\`.  "
echo ";   |,'     ---\`-' |  ,     .-./|  ,     .-./        \`-- -\`, ; "
echo "'---'               \`--\`---'     \`--\`---'              '---\`\"  "
echo "                                                               "
echo ""
echo ""
echo ""
echo ""
