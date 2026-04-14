#!/usr/bin/env bash

main () {
    name="$1"
    statement=""
    case $name in

        "")
            statement="One for you, one for me."
            ;;
        '* ')

            statement="One for * , one for me."
            ;;
        *)
            statement="One for ${name}, one for me."
            ;;
    esac


    echo $statement
}

main "$@"
