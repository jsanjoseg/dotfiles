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

# Source external configuration files from dotfiles directory
external_dotfiles_dir="${bash_dotfiles_dir}/external"

if [[ -d "${external_dotfiles_dir}" ]]; then
    for file in "${external_dotfiles_dir}"/*; do
        if [[ -f ${file} ]]; then
            source "${file}"
        fi
    done
fi
