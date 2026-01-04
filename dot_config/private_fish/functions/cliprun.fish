function cliprun
    set -l tmpfile /tmp/fish_last_output.txt
    eval $argv | tee $tmpfile
    cat $tmpfile | wl-copy
end
