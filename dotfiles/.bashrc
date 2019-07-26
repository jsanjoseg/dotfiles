# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Source bash configuration files
bash_dotfiles_dir="${HOME}/.bash"

if [[ -d "${bash_dotfiles_dir}" ]]; then
    for file in "${bash_dotfiles_dir}"/*; do
        source "${file}"
    done
fi

# Source extra configuration files
extraconfig_dotfiles_dir="${bash_dotfiles_dir}/extra-config"

if [[ -d "${extraconfig_dotfiles_dir}" ]]; then
    for file in "${extraconfig_dotfiles_dir}"/*; do
        source "${file}"
    done
fi
