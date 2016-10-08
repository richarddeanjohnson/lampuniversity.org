#!/bin/bash
# Copyright © 2016, William N. Braswell, Jr.. All Rights Reserved. This work is Free \& Open Source; you can redistribute it and/or modify it under the same terms as Perl 5.24.0.
# LAMP Installer Script v0.001_000

P () {  # Prompt user for input
    echo 'STARTING P()'; echo; echo
    while true; do
            read -p "Please type the $1... " USER_INPUT
        case $USER_INPUT in
            [a-zA-Z0-9_] ) echo; break;;
            * ) echo "Please enter the $1! "; echo;;
        esac
    done
    return $USER_INPUT
}
# START HERE: fix P() and D()
P 'new foo to be created'
P

D () {  # prompt user for input w/ Default value
    while true; do
            read -p "Please type the $1, or press <ENTER> for $2... " USER_INPUT
        case $USER_INPUT in
            [a-zA-Z0-9_] ) echo; break;;
            '' ) echo; MENU_CHOICE=$2; break;;
            * ) echo "Please enter the $1, or press <ENTER> for $2! "; echo;;
        esac
    done
    return $USER_INPUT
}

S () {  # Sudo command
    B sudo $@
}

B () {  # Bash command
    echo '$' "$@"
    while true; do
        read -p 'Run above command, yes or no?  [yes] ' -n 1 PROMPT_INPUT
        case $PROMPT_INPUT in
            n|N ) echo; echo; return;;
            y|Y ) echo; break;;
            '' ) break;;
            * ) echo;;
        esac
    done
    #    bash -xc " \  # -x replaced w/ echo above
    bash -c " ${01} ${02} ${03} ${04} ${05} ${06} ${07} ${08} ${09} ${10} ${11} ${12} ${13} ${14} ${15} ${16} ${17} ${18} ${19} \
        ${20} ${21} ${22} ${23} ${24} ${25} ${26} ${27} ${28} ${29} ${30} ${31} ${32} ${33} ${34} ${35} ${36} ${37} ${38} ${39} \
        ${40} ${41} ${42} ${43} ${44} ${45} ${46} ${47} ${48} ${49} ${50} ${51} ${52} ${53} ${54} ${55} ${56} ${57} ${58} ${59} \
        ${60} ${61} ${62} ${63} ${64} ${65} ${66} ${67} ${68} ${69} ${70} ${71} ${72} ${73} ${74} ${75} ${76} ${77} ${78} ${79} \
        ${80} ${81} ${82} ${83} ${84} ${85} ${86} ${87} ${88} ${89} ${90} ${91} ${92} ${93} ${94} ${95} ${96} ${97} ${98} ${99} "
    echo
}
#B echo DUMMY COMMAND $MENU_CHOICE 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49

echo  '    [[[<<< LAMP Installer Script >>>]]]'
echo  '          [[[<<< Main Menu >>>]]]'
echo

echo  '             <<< LOCAL CLI >>>'
echo \ '0. [[[        LINUX, CONFIGURE OPERATING SYSTEM USERS ]]]'
echo \ '1. [[[        LINUX, CONFIGURE CLOUD NETWORKING ]]]'
echo \ '2. [[[ UBUNTU LINUX, FIX BROKEN SWAP DEVICE ]]]'
echo \ '3. [[[ UBUNTU LINUX, FIX BROKEN LOCALE ]]]'
echo \ '4. [[[ UBUNTU LINUX, INSTALL EXPERIMENTAL UBUNTU SDK BEFORE OTHER PACKAGES ]]]'
echo \ '5. [[[ UBUNTU LINUX, UPGRADE ALL OPERATING SYSTEM PACKAGES ]]]'
echo \ '6. [[[ UBUNTU LINUX, INSTALL BASE CLI OPERATING SYSTEM PACKAGES ]]]'
echo \ '7. [[[ UBUNTU LINUX, INSTALL & TEST CLAMAV ANTI-VIRUS ]]]'
echo \ '8. [[[        LINUX, INSTALL LAMP UNIVERSITY TOOLS ]]]'
echo \ '9. [[[ UBUNTU LINUX, INSTALL HEIRLOOM TOOLS (including bdiff) ]]]'
echo  '10. [[[ UBUNTU LINUX, INSTALL BROADCOM B43 WIFI ]]]'
echo  '11. [[[ UBUNTU LINUX, PERFORMANCE BENCHMARKING ]]]'
echo

echo  '             <<< LOCAL GUI >>>'
echo  '12. [[[ UBUNTU LINUX, INSTALL BASE GUI OPERATING SYSTEM PACKAGES ]]]'
echo  '13. [[[ UBUNTU LINUX, INSTALL EXTRA GUI OPERATING SYSTEM PACKAGES ]]]'
echo  '14. [[[ UBUNTU LINUX, INSTALL XPRA ]]]'
echo  '15. [[[ UBUNTU LINUX, INSTALL VIRTUALBOX GUEST ADDITIONS ]]]'
echo  '16. [[[ UBUNTU LINUX, FIX BROKEN SCREENSAVER ]]]'
echo  '17. [[[ UBUNTU LINUX, CONFIGURE XFCE WINDOW MANAGER ]]]'
echo

echo  '             <<< SERVICES >>>'
echo  '18. [[[ UBUNTU LINUX,   INSTALL NFS ]]]'
echo  '19. [[[ UBUNTU LINUX,   INSTALL APACHE & MOD_PERL ]]]'
echo  '20. [[[ APACHE,         CONFIGURE DOMAIN(S) ]]]'
echo  '21. [[[ UBUNTU LINUX,   INSTALL MYSQL & PHPMYADMIN ]]]'
echo  '22. [[[ APACHE & MYSQL, CONFIGURE PHPMYADMIN ]]]'
echo  '23. [[[ UBUNTU LINUX,   INSTALL WEBMIN ]]]'
echo  '24. [[[ UBUNTU LINUX,   INSTALL POSTFIX ]]]'
echo  '25. [[[ UBUNTU LINUX,   INSTALL NON-LATEST PERL CATALYST ]]]'
echo  '26. [[[ UBUNTU LINUX,   INSTALL PERL CPANM & LOCAL::LIB ]]]'
echo  '27. [[[ UBUNTU LINUX,   INSTALL HAND-COMPILED PERL, OR PERLBREW & CPANMINUS ]]]'
echo  '28. [[[ PERL CATALYST,  INSTALL TUTORIAL FROM CPAN ]]]'
echo  '29. [[[ UBUNTU LINUX,   INSTALL PERL CATALYST SHINYCMS PREREQUISITES ]]]'
echo  '30. [[[ PERL CATALYST,  INSTALL SHINYCMS FROM GITHUB & LATEST CATALYST FROM CPAN ]]]'
echo  '31. [[[ PERL CATALYST,  INSTALL RAPIDAPP FROM GITHUB & LATEST CATALYST FROM CPAN ]]]'
echo  '32. [[[ PERL CATALYST,  CHECK VERSIONS ]]]'
echo

while true; do
    read -p 'Please type your main menu choice number, or press <ENTER> for 0... ' MENU_CHOICE
    case $MENU_CHOICE in
        [0-9]|[12][0-9]|3[0-2] ) echo; break;;
        '' ) echo; MENU_CHOICE=0; break;;
        * ) echo 'Please choose a number from the menu!'; echo;;
    esac
done


echo  '          [[[<<< Machine Menu >>>]]]'
echo
echo \ '0. [[[      NEW MACHINE; SERVER; REMOTE CLOUD HOST ]]]'
echo \ '1. [[[ EXISTING MACHINE; CLIENT; LOCAL USER SYSTEM ]]]'
echo

while true; do
    read -p 'Please type your machine menu choice number, or press <ENTER> for 0... ' MACHINE_CHOICE
    case $MACHINE_CHOICE in
        [01] ) echo; break;;
        '' ) echo; MACHINE_CHOICE=0; break;;
        * ) echo 'Please choose a number from the menu!'; echo;;
    esac
done


if [ $MENU_CHOICE -le 0 ]; then
    echo '0. [[[ LINUX, CONFIGURE OPERATING SYSTEM USERS ]]]'
    echo
    if [ $MACHINE_CHOICE -eq 0 ]; then
        echo '0. [[[ NEW MACHINE; SERVER; REMOTE CLOUD HOST ]]]'
        echo '[ Reset root Password ]'
        S passwd  # NEED FIX: disable root account???
        echo '[ Remove Default User ]'
        S userdel user
        S rm -Rf /home/user
        echo '[ Create New User ]'
        USERNAME=P 'new username to be created'
        S useradd $USERNAME
        S passwd $USERNAME
        S cp -a /etc/skel /home/$USERNAME
        S chown -R $USERNAME.$USERNAME /home/$USERNAME
        S chmod -R go-rwx /home/$USERNAME
        S chsh -s /bin/bash $USERNAME
        EDITOR=D 'preferred text editor' 'vi'
        echo "[ Manually Add $USERNAME To User Group sudo, Allows Running root Commands (Like update-manager) Via sudo In xpra ]"
        S $EDITOR /etc/group
        echo "[ Take Note Of IP Address For Use On Local User System ]"
        ifconfig
    elif [ $MACHINE_CHOICE -eq 1 ]; then
        echo '1. [[[ EXISTING MACHINE; CLIENT; LOCAL USER SYSTEM ]]]'
        USERNAME=P "new machine's user name"
        IP_ADDRESS=P "new machine's IP address (ex: 123.145.167.189)"
        DOMAIN_NAME=P "new machine's fully-qualified domain name (ex: domain.com OR subdomain.domain.com)"
        echo "[ Manually Add New Machine IP Address & Domain Name, Copy Data From The Next Line ]"
        echo "[ $IP_ADDRESS $DOMAIN_NAME ]"
        S $EDITOR /etc/hosts
        echo "[ Enable Passwordless SSH ]"
        echo "[ Do Not Re-Run ssh-keygen If Already Done In The Past ]"
        echo "[ You May Be Prompted Once To Unlock Keyring, Passwordless Thereafter ]"
        B ssh-keygen
        B ssh-copy-id $USERNAME@$DOMAIN_NAME
        B ssh $USERNAME@$DOMAIN_NAME
        B ssh $USERNAME@$DOMAIN_NAME
        echo "[ Copy Run Commands & Config Files To New Machine: bash, vi, git ]"
        B scp ~/.bashrc ~/.vimrc ~/.gitconfig $DOMAIN_NAME:~/
    fi
fi

if [ $MENU_CHOICE -le 1 ]; then
    echo '1. [[[ LINUX, CONFIGURE CLOUD NETWORKING ]]]'
    echo
fi

if [ $MENU_CHOICE -le 2 ]; then
    echo '2. [[[ UBUNTU LINUX, FIX BROKEN SWAP DEVICE ]]]'
    echo
fi

if [ $MENU_CHOICE -le 3 ]; then
    echo '3. [[[ UBUNTU LINUX, FIX BROKEN LOCALE ]]]'
    echo
fi

if [ $MENU_CHOICE -le 4 ]; then
    echo '4. [[[ UBUNTU LINUX, INSTALL EXPERIMENTAL UBUNTU SDK BEFORE OTHER PACKAGES ]]]'
    echo
fi