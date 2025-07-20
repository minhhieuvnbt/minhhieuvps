#!/bin/bash

function log_info() {
  echo -e "\033[1;34m[INFO]\033[0m $1"
}

function log_error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1"
}

function log_success() {
  echo -e "\033[1;32m[SUCCESS]\033[0m $1"
}

function check_command() {
  command -v "$1" >/dev/null 2>&1
}
