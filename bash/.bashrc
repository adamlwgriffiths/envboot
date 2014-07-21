#!/bin/bash

#-------------------------------------------------------------
# Modular bash scripts
#-------------------------------------------------------------

# iterate over our bashrc script files
for script in ~/.bash_scripts/*.sh
do
    # check if the script is executable
    if [ -x "${script}" ]; then
        # run the script
        source "${script}"
    fi
done

