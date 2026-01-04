
function copy_last_command --description 'Copy last command to clipboard and print it'
    set -l last_cmd (history | head -n1)
    echo $last_cmd
    echo -n $last_cmd | wl-copy
end
