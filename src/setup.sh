#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

#
#   install plugins with minpac
#

install_plugins() {


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install plugins.

    vim +PluginsSetup

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    ./create_symbolic_links.sh "$@"

    print_in_purple "\n • Install plugins\n\n"
    install_plugins
}

main "$@"