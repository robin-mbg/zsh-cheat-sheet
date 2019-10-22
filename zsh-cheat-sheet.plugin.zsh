alias cs="cheat_sheet"

function cheat_sheet(){
    if [ -z $1 ]
    then
        $(noglob history | awk '{$1="";print substr($0,2)}' | sed '/^[[:blank:]]*#/d;' | uniq | grep " #" | grep -v "history " | fzf | sed 's/#.*//')
    else
        echo "Arguments not yet supported."
        cheat_sheet
    fi
}
