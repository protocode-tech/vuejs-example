set -e

# Set aliases to use binaries within container from environment terminal
add_alias () {
    # In bash
    if [ $(cat ~/.bashrc | grep -c "alias \"$1\"=\"$2\"") -eq 0 ]; then
        echo "alias \"$1\"=\"$2\"" >> ~/.bashrc
    fi
    # In OhMyZsh
    if [ $(cat ~/.zshrc | grep -c "alias \"$1\"=\"$2\"") -eq 0 ]; then
        echo "alias \"$1\"=\"$2\"" >> ~/.zshrc
    fi
}

# For node
add_alias "node" "docker-compose run --rm -u node:node -it app node"
# For npm
add_alias "npm" "docker-compose run --rm -u node:node -it app npm"
# For npm
add_alias "npx" "docker-compose run --rm -u node:node -it app npx"
# For yarn
add_alias "yarn" "docker-compose run --rm -u node:node -it app yarn"
