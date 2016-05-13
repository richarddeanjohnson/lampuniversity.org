#!/bin/bash
# Copyright © 2014, 2015, 2016, William N. Braswell, Jr.. All Rights Reserved. This work is Free & Open Source; you can redistribute it and/or modify it under the same terms as Perl 5.20.0.

VERSION=0.010_000

echo "EXAMPLES:"
echo "replace all occurrences of 'FOO' with 'BAR'"
echo "$ find_replace_recurse.sh 'FOO' 'BAR' ./"
echo "replace all occurrences of '[ ANYTHING GOES HERE 123 #@$ ]' with '< ANYTHING GOES HERE 123 #@$ >'"
echo "$ find_replace_recurse.sh '\[(.*)\]' '<\1>' ./"
echo "replace all occurrences of \"FOO\" with \"'FOO'\" (wrap FOO in single quotes)"
echo "$ find_replace_recurse.sh 'FOO' \"'FOO'\" ./"
echo '    BACKSLASH-ESCAPED CHARACTERS, find text,            single quotes:   @   $ % & / \ ( ) [ ] { } |'
echo 'NON-BACKSLASH-ESCAPED CHARACTERS, find text,            single quotes: < > #'
echo '    BACKSLASH-ESCAPED CHARACTERS, replace text,         single quotes:   @ #   % & / \'
echo '    BACKSLASH-ESCAPED CHARACTERS, replace text matches, single quotes: 1 2 3 ...'
echo 'NON-BACKSLASH-ESCAPED CHARACTERS, replace text,         single quotes:       $         ( ) [ ] { } < >'
echo "    BACKSLASH-ESCAPED CHARACTERS, replace text,         double quotes: ' @ # $ % & / \\"
echo

echo "ABOUT TO RECURSIVELY FIND AND REPLACE"
echo "find text:    '$1'"
echo "replace text: '$2'"
echo "directory:    $3"

if [[ $4 =~ ^YES$ ]]
then
    echo "Skipping prompt, I hope you're sure!"
    PASS=1;
else
    read -p "Are you sure? " -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        PASS=1;
    else
        PASS=0;
    fi
fi

if [ "$PASS" -eq 1 ]
then
    echo 'Recursively finding and replacing...'
    sed -ri -e "s/$1/$2/g" $(grep -Elr --binary-files=without-match "$1" "$3")

    # wrongly edits binary files, will corrupt .git/index files, database files, etc
#    find $3 -type f -readable -writable -exec sed -i "s/$1/$2/g" {} \;

    echo 'DONE!'
fi
