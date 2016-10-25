#!/bin/bash

set -e

mas signin $1

readonly apps=(
"443987910 1Password"
"944960179 AnyDo"
"1037126344 Apple Configurator 2"
"424164948 Brightness"
"411246225 Caffeine"
"417602904 CloudApp"
"424390742 Compressor"
"411643860 DaisyDisk"
"549083868 Display Menu"
"413857545 Divvy"
"476237254 Ds Store Remover"
"406056744 Evernote"
"424389933 Final Cut Pro"
"682658836 GarageBand"
"467939042 Growl"
"475260933 HardwareGrowler"
"449830122 HyperDock"
"490152466 iBooks Author"
"408981434 iMovie"
"927292435 iStat Mini"
"1111218007 Jasper"
"409183694 Keynote"
"405399194 Kindle"
"896624060 Kobito"
"414030210 LimeChat"
"539883307 LINE"
"784801555 Microsoft OneNote"
"715768417 Microsoft Remote Desktop"
"409203825 Numbers"
"823766827 OneDrive"
"409201541 Pages"
"891571917 Plain Text - Remove Text Format"
"568494494 Pocket"
"907364780 Pomodoro One"
"446107677 Screens"
"692867256 Simplenote"
"425955336 Skitch"
"405580712 StuffIt Expander"
"425424353 The Unarchiver"
"485812721 TweetDeck"
"409789998 Twitter"
"488709442 VisualJSON"
"494803304 WiFi Explorer"
"638161122 YubiKey Personalization Tool"
)
for app in "${apps[@]}"; do
    app_id=$(echo $app | cut -d ' ' -f 1)
    app_name=$(echo $app | cut -d ' ' -f 2)
    echo "installing $app_name"
    mas install $app_id
done
