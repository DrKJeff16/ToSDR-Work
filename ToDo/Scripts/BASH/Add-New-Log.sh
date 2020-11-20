#!/bin/bash

            # DO NOT USE UNLESS IT'S MOVED TO THE ROOT FOLDER!
# ----------------------------FUNCTIONS' SECTION--------------------------------
usage(){                              # Prints quick usage instructions.
  cat <<-EOF
  ||==================================================================================================||
  ||Usage:                                                                                            ||
  ||      ./Add-New-Log.sh [-f | --file] <filename> [-d | --default] [-V | --version] [-h | --help]   ||
  ||                                                                                                  ||
  ||OPTIONS:==========================================================================================||
  ||                                                                                                  ||
  ||      -f  | --file        Prints to File.                                                         ||
  ||      -d  | --default     Goes on Default Mode.                                                   ||
  ||      -h  | --help        Prints Help.                                                            ||
  ||==================================================================================================||
  EOF
}

pr_help(){                            # Prints help.
  cat <<-EOF
    Add-New-Log.sh
  EOF
}
# ------------------------------------------------------------------------------

if [[ ${#} -eq 0 ]]; then             # Prints usage if no options/arguments are given.
  usage
fi

while getopts :h arg
do
  case $arg in
    h) pr_help
    ;;
    :) usage
    ;;
    ?) usage
    ;;
  esac
done
