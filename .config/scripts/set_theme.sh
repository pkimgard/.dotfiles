#!/usr/bin/env bash

usage() {
    echo "$0 <THEMENAME>"
}
if [ "$#" -eq 0 ]; then usage; fi

theme=$1
wpfolder="$HOME/.local/share/wallpapers"
i3_themes="$HOME/.config/i3/themes"
rofi_themes="$HOME/.config/rofi/themes"
polybar_themes="$HOME/.config/polybar/themes"
kitty_themes="$HOME/.config/kitty/themes"

main() {
    $theme
    i3
    gtk
    background
    kitty
    rofi
    polybar
}

#---------- THEMES ----------#
restore() {
    bg="restore"
    i3="restore"
    gtk2="restore"
    gtk3="restore"
    rofi="restore"
    polybar=sample.ini
    kitty="restore"
}
dracula() {
    bg="$wpfolder/dracula.png"
    i3="dracula.conf"
    gtk2="Dracula"
    gtk3="Dracula"
    rofi="dracula.rasi"
    polybar="dracula.ini"
    kitty="Dracula.conf"
}
nordic() {
    bg="$wpfolder/archlinux_nord_big.png"
    i3="nordic.conf"
    gtk2="Nordic"
    gtk3="Nordic"
    rofi="nord.rasi"
    polybar="nordic.ini"
    kitty="Nord.conf"
} #----------------------------# 

background() {
    feh --bg-fill $bg
}

i3() {
    echo "Setting i3 theme"
    i3_path="$i3_themes/$i3"
    if [[ "$i3" == "restore" ]];then
        rm $HOME/.config/i3/conf.d/current_theme.conf
    else
        cp $i3_path ~/.config/i3/conf.d/current_theme.conf
    fi
    i3-msg restart > /dev/null
}

rofi() {
    echo "Setting rofi theme"
    rofi_path="$rofi_themes/$rofi"
    if [[ "$rofi_path" == "restore" ]];then
        rm $HOME/.config/rofi/config.rasi
    else
        cp $rofi_path $HOME/.config/rofi/config.rasi
    fi
}

kitty() {
    echo "Setting kitty theme"
    kitty_path="$kitty_themes/$kitty"
    if [[ "$kitty" == "restore" ]];then
        rm $HOME/.config/kitty/current-theme.conf
    else
        cp $kitty_path $HOME/.config/kitty/current-theme.conf
    fi
}
gtk() {
    echo "Setting gtk themes"
    if [[ $theme != "restore" ]];then
        sed -i "s/^gtk-theme-name=\".*\"/gtk-theme-name=\"$gtk2\"/g" $HOME/.gtkrc-2.0 
        sed -i "s/^gtk-theme-name=.*/gtk-theme-name=$gtk3/g" $HOME/.config/gtk-3.0/settings.ini
    fi
}

polybar() {
    echo "Setting polybar theme"
    polybar_path="$polybar_themes/$polybar"
    cp $polybar_path $HOME/.config/polybar/config.ini
}
main
