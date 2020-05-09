# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

dotfiles_dir="${HOME}/.dotfiles"

# Source bash configuration files
bash_dotfiles_dir="${dotfiles_dir}/bash"

function walk_and_source() {
    # Walk a directory recursively and source the content
    local directory=$1
    for file in "${directory}"/*; do
        if [[ -f ${file} ]]; then
            source "${file}"
        elif [[ -d ${file} ]]; then
            walk_and_source "${file}"
        fi
    done
}

if [[ -d "${bash_dotfiles_dir}" ]]; then
    walk_and_source "${bash_dotfiles_dir}"
fi

