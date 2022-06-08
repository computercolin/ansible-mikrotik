#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# export ANSIBLE_LIBRARY="$SCRIPT_DIR/../library:$(python -c "import sys; print(':'.join(sys.path))")"
export ANSIBLE_LIBRARY="$SCRIPT_DIR/../library"
export ANSIBLE_MODULE_UTILS="$SCRIPT_DIR/../pythonlibs"

ansible-playbook -i "$SCRIPT_DIR/example_inventory.yml" "$SCRIPT_DIR/ovpn_example_playbook.yml" "$@"