#!/bin/bash

while : ; 
do
    echo "all contents of the tests and answers folders will be deleted"
    echo -n "are you sure? (y/n) "

    read item
    case "$item" in
        y|Y) echo ""
            rm -r answers/
            rm -r tests/
            mkdir answers/
            mkdir tests/
            touch tests/.gitkeep
            touch answers/.gitkeep
            echo "tests and answers was deleted"
            break
            ;;
        n|N) echo ""
            exit 0
            ;;
        *) echo ""
            ;;
    esac
done
