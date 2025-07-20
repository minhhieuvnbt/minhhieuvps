#!/bin/bash

function show_menu() {
  echo "------ MENU MINHHIEU VPS ------"
  echo "1. Cài PHP (nhiều phiên bản) + ionCube"
  echo "2. Cài Nginx"
  echo "3. Cài MariaDB"
  echo "4. Cài Let's Encrypt SSL"
  echo "5. Cấu hình Swap"
  echo "6. Cấu hình Firewall"
  echo "7. Cài Monitoring Tools"
  echo "8. Gỡ toàn bộ (uninstall)"
  echo "0. Thoát"
  echo "-------------------------------"
}

function process_choice() {
  read -rp "Chọn chức năng: " choice
  case "$choice" in
    1) bash functions/php.sh ;;
    2) bash functions/nginx.sh ;;
    3) bash functions/mariadb.sh ;;
    4) bash functions/ssl.sh ;;
    5) bash functions/swap.sh ;;
    6) bash functions/firewall.sh ;;
    7) bash functions/monitoring.sh ;;
    8) bash uninstall.sh ;;
    0) exit 0 ;;
    *) echo "Lựa chọn không hợp lệ." ;;
  esac
}

while true; do
  show_menu
  process_choice
done
