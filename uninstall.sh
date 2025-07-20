#!/bin/bash

echo "Gỡ cài đặt MinhHieuVPS..."

# Gỡ từng thành phần
bash functions/php.sh --uninstall
bash functions/nginx.sh --uninstall
bash functions/mariadb.sh --uninstall
bash functions/ssl.sh --uninstall
bash functions/swap.sh --uninstall
bash functions/firewall.sh --uninstall
bash functions/monitoring.sh --uninstall

echo "Xóa thư mục MinhHieuVPS"
rm -rf ~/minhhieuvps

echo "Đã hoàn tất gỡ cài đặt."
