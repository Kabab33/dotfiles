#! /bin/bash
echo "Haiii welkom bij de installer."
echo "Ik ga hier effe sudo echo doen zodat je niet meer je wachtwoord hoeft in te voeren"
sudo echo "Het werkt!"
clear
echo "                                                                     ";
echo "                                                                     ";
echo "   ,---,                         ___                 ,--,    ,--,    ";
echo ",\`--.' |                       ,--.'|_             ,--.'|  ,--.'|    ";
echo "|   :  :      ,---,            |  | :,'            |  | :  |  | :    ";
echo ":   |  '  ,-+-. /  | .--.--.   :  : ' :            :  : '  :  : '    ";
echo "|   :  | ,--.'|'   |/  /    '.;__,'  /    ,--.--.  |  ' |  |  ' |    ";
echo "'   '  ;|   |  ,\"' |  :  /\`./|  |   |    /       \\ '  | |  '  | |    ";
echo "|   |  ||   | /  | |  :  ;_  :__,'| :   .--.  .-. ||  | :  |  | :    ";
echo "'   :  ;|   | |  | |\\  \\    \`. '  : |__  \\__\\/: . .'  : |__'  : |__  ";
echo "|   |  '|   | |  |/  \`----.   \\|  | '.'| ,\" .--.; ||  | '.'|  | '.'| ";
echo "'   :  ||   | |--'  /  /\`--'  /;  :    ;/  /  ,.  |;  :    ;  :    ; ";
echo ";   |.' |   |/     '--'.     / |  ,   /;  :   .'   \\  ,   /|  ,   /  ";
echo "'---'   '---'        \`--'---'   ---\`-' |  ,     .-./---\`-'  ---\`-'   ";
echo "                                        \`--\`---'                     ";
echo "                                                                     ";

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
    extra/ripgrep
else
echo " _   _      _                   ";
echo "| | | |    | |                  ";
echo "| |_| | ___| | __ _  __ _ ___   ";
echo "|  _  |/ _ \\ |/ _\` |/ _\` / __|  ";
echo "| | | |  __/ | (_| | (_| \\__ \\_ ";
echo "\\_| |_/\\___|_|\\__,_|\\__,_|___(_)";
echo "                                ";
echo "                                ";
echo "🚫 Dit script werkt nog niet met jouw pakage manager."
echo "   We supporten op dit moment alleen yay. Sorry!"
exit
fi
echo "🎉 Installatie van programmas is voltooid!"

sleep 1
echo "___  ____                _          __  __ ";
echo "|  \\/  (_)              | |        / _|/ _|";
echo "| .  . |_ ___  ___   ___| |_ _   _| |_| |_ ";
echo "| |\\/| | / __|/ __| / __| __| | | |  _|  _|";
echo "| |  | | \\__ \\ (__  \\__ \\ |_| |_| | | | |_ ";
echo "\\_|  |_/_|___/\\___| |___/\\__|\\__,_|_| |_(_)";
echo "                                           ";
echo "                                           ";
echo "🟦 Bluetooth instellen..."
sudo systemctl enable bluetooth
sudo systemctl start bluetooth
echo "🟦 bluetooth klaar!"
echo "📦 Flathub instellen.."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "📦 Meer installeren met flatpak..."
flatpak install -y --noninteractive --or-update org.gnome.World.Iotas
echo "🐮 Broot instellen voor bash..."
broot --install
echo "❗ Broot is niet ingesteld op fish!"
echo "   Dat doen we later wel ;)"














echo " _   _                             _ ";
echo "| | | |                           | |";
echo "| |_| |_   _ _ __ ___   __ _ _ __ | |";
echo "|  _  | | | | '_ \` _ \\ / _\` | '_ \\| |";
echo "| | | | |_| | | | | | | (_| | | | |_|";
echo "\\_| |_/\\__,_|_| |_| |_|\\__,_|_| |_(_)";
echo "                                     ";
echo "                                     ";
echo ""
echo ""
echo "We gaan fish starten! ik vaag je om deze commando's uit te voeren:"
echo ""
echo "broot --install"
echo "exit"
echo ""
fish
echo ""
echo "                                                        ,---,  ";
echo "       ,--.                                          ,\`--.' |  ";
echo "   ,--/  /|  ,--,                                    |   :  :  ";
echo ",---,': / ',--.'|                                    '   '  ;  ";
echo ":   : '/ / |  | :                             __  ,-.|   |  |  ";
echo "|   '   ,  :  : '                           ,' ,'/ /|'   :  ;  ";
echo "'   |  /   |  ' |     ,--.--.      ,--.--.  '  | |' ||   |  '  ";
echo "|   ;  ;   '  | |    /       \\    /       \\ |  |   ,''   :  |  ";
echo ":   '   \\  |  | :   .--.  .-. |  .--.  .-. |'  :  /  ;   |  ;  ";
echo "|   |    ' '  : |__  \\__\\/: . .   \\__\\/: . .|  | '   \`---'. |  ";
echo "'   : |.  \\|  | '.'| ,\" .--.; |   ,\" .--.; |;  : |    \`--..\`;  ";
echo "|   | '_\\.';  :    ;/  /  ,.  |  /  /  ,.  ||  , ;   .--,_     ";
echo "'   : |    |  ,   /;  :   .'   \\;  :   .'   \\---'    |    |\`.  ";
echo ";   |,'     ---\`-' |  ,     .-./|  ,     .-./        \`-- -\`, ; ";
echo "'---'               \`--\`---'     \`--\`---'              '---\`\"  ";
echo "                                                               ";
