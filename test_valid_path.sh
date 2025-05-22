#! /bin/bash

params=("${@:1}")
for param in "${params[@]}"; do
        if [ -e "$param" ]; then
                echo "Exists $param"
        else
                echo "Does not exists $param"
                exit 1
        fi
done
