#!/bin/bash

            # DO NOT USE UNLESS IT'S MOVED TO THE ROOT FOLDER!
# ----------------------------FUNCTIONS' SECTION--------------------------------
usage(){                              # Prints quick usage instructions.
  local txt=("||==================================================================================================||" "||Usage:                                                                                            ||" "||      ./Add-New-Log.sh [-f | --file] <filename> [-d | --default] [-V | --version] [-h | --help]   ||" "||                                                                                                  ||" "||OPTIONS:==========================================================================================||" "||                                                                                                  ||" "||      -f  | --file        Prints to File.                                                         ||" "||      -d  | --default     Goes on Default Mode.                                                   ||" "||      -h  | --help        Prints Help.                                                            ||" "||==================================================================================================||")
  printf "%s\n" "${txt[@]}"
}

pr_hlp(){                            # Prints help.
  echo "HELP ME"
}


# ------------------------------------------------------------------------------

if [[ ${#} -eq 0 ]]; then             # Prints usage if no options/arguments are given.
  usage
fi

while getopts :hfdV arg
do
  case $arg in
    h) pr_hlp
    ;;
    V) pr_version
    ;;
    d) fc_default ; shift
    ;;
    f) fle_me $2 ; shift 2
    ;;
    :) usage
    ;;
    ?) usage
    ;;
  esac
done
