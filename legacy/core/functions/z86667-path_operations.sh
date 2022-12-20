#!/bin/bash

function add_to_path_() {
  [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}:${PATH}"
}

function affix_to_path_() {
  [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}:${PATH}"
}

function perpend_to_path_() {
  [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}:${PATH}"
}

function append_to_path_() {
  [ -z "$1" ] || [ -d "$1" ] && export PATH="${PATH}:${1}"
}
