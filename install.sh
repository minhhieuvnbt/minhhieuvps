#!/bin/bash

# Script chính: chạy từ curl hoặc trực tiếp
clear
echo "===> MINHHIEU VPS INSTALLER <==="

# Kiểm tra root
if [ "$EUID" -ne 0 ]; then
  echo "Vui lòng chạy bằng quyền root (sudo)"
  exit 1
fi

# Kiểm tra HocVPS
if [ -d "/hocvps" ]; then
  echo "⚠️  Hệ thống đã cài HocVPS. Bạn có muốn nâng cấp lên MinhHieuVPS? (y/n)"
  read -r upgrade
  if [[ "$upgrade" != "y" ]]; then
    echo "Thoát cài đặt."
    exit 0
  fi
fi

# Tải các function
source ./menu.sh
