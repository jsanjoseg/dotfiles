# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

dotfiles_dir="${HOME}/.dotfiles"

# Source bash configuration files
bash_dotfiles_dir="${dotfiles_dir}/bash"
if [[ -d "${bash_dotfiles_dir}" ]]; then
    for file in "${bash_dotfiles_dir}"/*; do
        if [[ -f ${file} ]]; then
            source "${file}"
        fi
    done
fi

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

# Source external configuration files after the bash config files, so the
# config will be overwritten by the external one.
# Use walk and source, to source files inside directories as well.
external_dotfiles_dir="${bash_dotfiles_dir}/external"
if [[ -d "${external_dotfiles_dir}" ]]; then
    walk_and_source "${external_dotfiles_dir}"
fi
