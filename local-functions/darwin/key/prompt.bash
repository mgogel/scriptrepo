# Frontend to controlling prompt
prompt() {

    # What's done next depends on the first argument to the function
    case $1 in

        # Turn complex, colored prompt on
        on)
            # Set up pre-prompt command and prompt format
            PROMPT_COMMAND='declare -i ret=$? ; history -a'
            PS1='[\u@\h:\w]$(prompt vcs)$(prompt job)$(prompt ret)\$'

            # If Bash 4.0 is available, trim very long paths in prompt
            if ((BASH_VERSINFO[0] >= 4)) ; then
                PROMPT_DIRTRIM=4
            fi

            # Count available colors, reset, and format (decided shortly)
            local -i colors=$( {
                tput Co || tput colors
            } 2>/dev/null )
            local reset=$( {
                tput me || tput sgr0
            } 2>/dev/null )
            local format

            # Check if we have non-bold bright green available
            if ((colors == 256)) ; then
                format=$( {
                    tput AF 10 || tput setaf 10 \
                        || tput AF 10 0 0 || tput setaf 10 0 0
                } 2>/dev/null )

            # If we have only eight colors, use bold green to make it bright
            elif ((colors == 8)) ; then
                format=$( {
                    tput AF 2 || tput setaf 2
                    tput md || tput bold
                } 2>/dev/null )

            # For non-color terminals (!), just use bold
            else
                format=$( {
                    tput md || tput bold
                } 2>/dev/null )
            fi

            # String it all together
            PS1='\['"$format"'\]'"$PS1"'\['"$reset"'\] '
            ;;

        # Revert to simple inexpensive prompt
        off)
            unset -v PROMPT_COMMAND PROMPT_DIRTRIM ret
            PS1='\$ '
            ;;

        git)
            # Bail if we have no git(1)
            if ! hash git 2>/dev/null ; then
                return 1
            fi

            # Attempt to determine git branch, bail if we can't
            local branch
            branch=$( {
                git symbolic-ref --quiet HEAD \
                || git rev-parse --short HEAD
            } 2>/dev/null )
            if [[ ! $branch ]] ; then
                return 1
            fi
            branch=${branch##*/}

            # Safely read status with -z --porcelain
            local line
            local -i ready modified untracked
            while IFS= read -d $'\0' -r line ; do
                if [[ $line == [MADRC]* ]] ; then
                    ready=1
                fi
                if [[ $line == ?[MADRC]* ]] ; then
                    modified=1
                fi
                if [[ $line == '??'* ]] ; then
                    untracked=1
                fi
            done < <(git status -z --porcelain 2>/dev/null)

            # Build state array from status output flags
            local -a state
            if [[ $ready ]] ; then
                state=("${state[@]}" '+')
            fi
            if [[ $modified ]] ; then
                state=("${state[@]}" '!')
            fi
            if [[ $untracked ]] ; then
                state=("${state[@]}" '?')
            fi

            # Add another indicator if we have stashed changes
            if git rev-parse --verify refs/stash >/dev/null 2>&1 ; then
                state=("${state[@]}" '^')
            fi

            # Print the status in brackets with a git: prefix
            local IFS=
            printf '(git:%s%s)' "${branch:-unknown}" "${state[*]}"
            ;;

        # Mercurial prompt function
        hg)
            # Bail if we have no hg(1)
            if ! hash hg 2>/dev/null ; then
                return 1
            fi

            # Exit if not inside a Mercurial tree
            local branch
            if ! branch=$(hg branch 2>/dev/null) ; then
                return 1
            fi

            # Start collecting working copy state flags
            local -a state

            # Safely read status with -0
            local line
            local -i modified untracked
            while IFS= read -d $'\0' -r line ; do
                if [[ $line == '?'* ]] ; then
                    untracked=1
                else
                    modified=1
                fi
            done < <(hg status -0 2>/dev/null)

            # Build state array from status output flags
            local -a state
            if [[ $modified ]] ; then
                state=("${state[@]}" '!')
            fi
            if [[ $untracked ]] ; then
                state=("${state[@]}" '?')
            fi

            # Print the status in brackets with an hg: prefix
            local IFS=
            printf '(hg:%s%s)' "${branch:-unknown}" "${state[*]}"
            ;;

        # Subversion prompt function
        svn)
            # Bail if we have no svn(1)
            if ! hash svn 2>/dev/null ; then
                return 1
            fi

            # Determine the repository URL and root directory
            local key value url root
            while IFS=: read -r key value ; do
                case $key in
                    'URL')
                        url=${value## }
                        ;;
                    'Repository Root')
                        root=${value## }
                        ;;
                esac
            done < <(svn info 2>/dev/null)

            # Exit if we couldn't get either
            if ! [[ $url && $root ]] ; then
                return 1
            fi

            # Remove the root from the URL to get what's hopefully the branch
            # name, removing leading slashes and the 'branches' prefix, and any
            # trailing content after a slash
            local branch
            branch=${url/$root}
            branch=${branch#/}
            branch=${branch#branches/}
            branch=${branch%%/*}

            # Parse the output of svn status to determine working copy state
            local symbol
            local -i modified untracked
            while read -r symbol _ ; do
                if [[ $symbol == *'?'* ]] ; then
                    untracked=1
                else
                    modified=1
                fi
            done < <(svn status 2>/dev/null)

            # Add appropriate state flags
            local -a state
            if [[ $modified ]] ; then
                state=("${state[@]}" '!')
            fi
            if [[ $untracked ]] ; then
                state=("${state[@]}" '?')
            fi

            # Print the state in brackets with an svn: prefix
            local IFS=
            printf '(svn:%s%s)' "${branch:-unknown}" "${state[*]}"
            ;;

        # VCS wrapper prompt function; print the first relevant prompt, if any
        vcs)
            prompt git || prompt svn || prompt hg
            ;;

        # Show return status of previous command in angle brackets, if not zero
        ret)
            if ((ret > 0)) ; then
                printf '<%d>' "$ret"
            fi
            ;;

        # Show the count of background jobs in curly brackets, if not zero
        job)
            local -i jobc=0
            while read -r _ ; do
                ((jobc++))
            done < <(jobs -p)
            if ((jobc > 0)) ; then
                printf '{%d}' "$jobc"
            fi
            ;;
    esac
}

# Complete words
complete -W 'on off git hg svn vcs ret job' prompt

# Start with full-fledged prompt
prompt on

