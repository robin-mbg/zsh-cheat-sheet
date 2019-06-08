alias cc="cheat_sheet"

function cheat_sheet() {
    if [ -z $1 ]
    then
        $(history | awk -F" " '{ print $2,$3,$4,$5 }' | sort  | uniq --count | sort --numeric-sort --reverse | head -50 | fzf | awk -F" " '{ print $2,$3,$4,$5 }')
    else
        $(history | grep "$1" | awk -F" " '{ print $2,$3,$4,$5 }' | sort  | uniq --count | sort --numeric-sort --reverse | head -50 | fzf | awk -F" " '{ print $2,$3,$4,$5 }')
    fi
}
