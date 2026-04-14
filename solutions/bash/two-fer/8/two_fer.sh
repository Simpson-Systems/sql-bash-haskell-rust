#!/usr/bin/env bash

main () {
    name="$1"
    statement=""
    case $name in

        "")
            echo "hit empty string path"
            statement="One for you, one for me."
            ;;
        '* ')
            echo "hit wildcard glob path"
            statement="One for \* , one for me."
            ;;
        *)
            echo "hit catch all path"
            statement="One for ${name}, one for me."
            ;;
    esac


    echo $statement
}

main "$@"
