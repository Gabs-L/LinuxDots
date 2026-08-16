read_key() {
    IFS= read -rsn1 key
    # Detect Escape key (single ESC, not part of an arrow-key sequence)
    if [[ $key == $'\x1b' ]]; then
        read -rsn1 -t 0.01 rest 2>/dev/null
        if [[ -z "$rest" ]]; then
            echo "ESC"
            return
        fi
    fi
    echo "$key"
}

show_user_options() {
    clear
    echo "========================"
    echo "     Power Options"
    echo "========================"
    echo " [L] Lock Screen"
    echo " [S] Sleep"
    echo " [R] Restart"
    echo " [U] Shut Down"
    echo " [O] Log Out"
    echo
    echo " [Esc] Back"
    key=$(read_key)
    case "$key" in
        l|L) swaylock ;;
        s|S) systemctl suspend ;;
        r|R) systemctl reboot ;;
        u|U) systemctl poweroff ;;
        o|O) pkill -SIGTERM labwc ;;
        ESC) show_root ;;
    esac
}

show_settings() {
    clear
    echo "========================"
    echo "        Settings"
    echo "========================"
    echo " [N] Network Settings"
    echo " [D] Display Settings"
    echo " [S] Sound Settings"
    echo " [B] Bluetooth Settings"
    echo
    echo " [Esc] Back"
    key=$(read_key)
    case "$key" in
        n|N) nm-connection-editor & ;;
        d|D) wdisplays & ;;
        s|S) pavucontrol & ;;
        b|B) blueman-manager & ;;
        ESC) show_root ;;
    esac
}

show_root() {
    clear
    echo "========================"
    echo "   Le Power User Menu"
    echo "========================"
    echo " [U] User Options"
    echo " [S] Settings"
    echo
    echo " [Esc] Cancel"
    key=$(read_key)
    case "$key" in
        u|U) show_user_options ;;
        s|S) show_settings ;;
        ESC) exit 0 ;;
    esac
}

show_root
