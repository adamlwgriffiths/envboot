#!/bin/bash

#-------------------------------------------------------------
# Modular bash scripts
#-------------------------------------------------------------

SCRIPT_DIR=".bashrc_scripts"

# iterate over our bashrc script files
for script in "$SCRIPT_DIR/*.sh"
do
    # check if the script is executable
    if [ -x "${script}" ]; then
        # run the script
        source "${script}"
    fi
done

