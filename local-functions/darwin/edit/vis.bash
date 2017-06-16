# Create or edit a script in $PATH, creating in $HOME/.local/bin
vis() {
    local arg cmd file endopts
    local -a opts cmds files

    # Distinguish options from file arguments
    endopts=0
    for arg in "${@:?}" ; do
        if [[ $arg == -- ]] ; then
            endopts=1
        elif [[ $arg == -* ]] && ! ((endopts)) ; then
            opts=("${opts[@]}" "$arg")
        else
            cmds=("${cmds[@]}" "$arg")
        fi
    done

    # Check all the commands, if they don't exist, we'll create them
    for cmd in "${cmds[@]}" ; do
        file=$(type -p "${cmd##*/}")
        if [[ ! $file ]] ; then
            if ! mkdir -p "$HOME"/.local/bin ; then
                exit
            fi
            file="$HOME"/.local/bin/"${cmd##*/}"
        fi
        files=("${files[@]}" "$file")
    done

    # Run editor with all the options and full path file arguments
    command "${VISUAL:-${EDITOR:-vi}}" "${opts[@]}" -- "${files[@]}"

    # Attempt to make the new files executable by us
    chmod -f -- u+x "${files[@]}"
}

# Complete the vis function with command names
complete -A command vis

