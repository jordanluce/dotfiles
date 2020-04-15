export PS1='\e[31m[\u]\e[0m\e[36m[\w]\e[0m$([ -e .git ] && echo "$(tput setaf 2)[$(git symbolic-ref --short HEAD)]$(tput sgr0)") $ '
