function append_wlcopy_to_last_command
    set -l last_cmd (history | head -n1)
    commandline -r "$last_cmd | wl-copy"
end
