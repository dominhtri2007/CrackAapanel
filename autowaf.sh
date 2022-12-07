PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
purple(){
    echo -e "\033[35m\033[01m$1\033[0m"
}


PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
curl -X GET \
"https://api.cloudflare.com/client/v4/zones/[$Zone_ID]/firewall/rules" \
-H "X-Auth-Email: $email" \
-H "X-Auth-Key: $APIToken"

function conf() {
    read -p "nhập Zone_ID cloudflare:" Zone_ID
    echo -e "Link Web là : ${Zone_ID}"
    
    read -p "nhập email cloudflare:" email
    echo -e "Link Web là : ${email}"

    read -p "Nhập Api token là cái Global API Key ý:" APIToken
    echo -e "API token  là : ${APIToken}"

}

function start_menu(){
    clear
    purple " auto anti cloudflare tool."
    purple " không hiểu thì ib cho chủ tool nha"
    yellow " ————————————————————————————————————————————————"
    green " 1. Install auto anti "
    green " 0. Exit"

    echo
    read -p "nhập số đi quý zị:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           conf
        ;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "nhập đúng số đi bạn ơi"
            start_menu
        ;;
    esac
}
start_menu "kết thúc"
