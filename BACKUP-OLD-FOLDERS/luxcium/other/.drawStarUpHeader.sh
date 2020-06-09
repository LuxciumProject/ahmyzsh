function drawStarUpHeader() {
    echo "$CLRZ$PZTX$SLCLR                                                               $ELCLR\r"
    echo "$SLCLR                                                               $ELCLR\r"
    echo "$SLCLR                                                               $ELCLR\r"
    echo "$SLCLR                                                               $ELCLR\r"
    echo "$PZT$SLCLR$(tput setab 0)$(tput setaf 7)${bold}       $(tput setab 0)$(tput setaf 2)Loading$(tput setaf 1)${bold}.. ... . . ...   .. ...  .  ... .. ..$(tput setaf 2)( 15%)$(tput setaf 7)      ${normal}$ELCLR$DW$DW\r"
    echo -ne "$PZT$SLCLR $(tput setab 0)$(tput setaf 7)${bold}[     $(tput setab 0)$(tput setaf 2)Loading$(tput setaf 1)${bold}.. .. ...  .... .. .. ..... ... .....$(tput setaf 2)( 25%)$(tput setaf 7)    ] ${normal}$ELCLR$DW$DW$DW\r"
    echo -ne "$PZT$SLCLR $(tput setab 0)$(tput setaf 7)${bold} [    $(tput setab 0)$(tput setaf 2)Loading$(tput setaf 1)${bold}.. .. . . .. ... .   .. .  . . .. ...$(tput setaf 2)( 40%)$(tput setaf 7)   ]  ${normal}$ELCLR$DW$DW$DW\r"
    echo -ne "$PZT$SLCLR $(tput setab 0)$(tput setaf 7)${bold}  [   $(tput setab 0)$(tput setaf 2)Loading$(tput setaf 1)${bold}.. .. . .. ... ... . ... .. .. .. . .$(tput setaf 2)( 55%)$(tput setaf 7)  ]   ${normal}$ELCLR$DW$DW$DW\r"
    echo -ne "$PZT$SLCLR $(tput setab 0)$(tput setaf 7)${bold}   [  $(tput setab 0)$(tput setaf 2)Loading$(tput setaf 1)${bold}. .. .... .... ... ..... .... .. .. .$(tput setaf 2)( 80%)$(tput setaf 7) ]    ${normal}$ELCLR$DW$DW$DW\r"
    echo -ne "$PZT$SLCLR ${bold}$(tput setab 0)$(tput setaf 7)${bold}     [$(tput setab 0)$(tput setaf 2)Loading$(tput setaf 1)${bold}.....................................$(tput setab 0)$(tput setaf 2)(100%)$(tput setaf 7)]     ${normal}$ELCLR$DW$DW$DW\r"
    echo -ne "${PZT}${SLCLR}${bold}       Loading.............R.E.A.D.Y...............(100%)      ${normal}${ELCLR}$DW$DW$DW\r"

    if [ "$WITH_GNU_COREUTILS" = 'true' ]; then
        compute_path && print "${PZT}$DW${SLCLR}${bold}       $(tput setaf 2)GNU/Linux   utils$(tput setaf 3)    are     in     function . . .      ${normal}$ELCLR"
        print "$SLCLR                                                               $ELCLR\r"
    fi

    if [ "$WITH_GNU_COREUTILS" != 'true' ]; then
        compute_path && echo "${PZT}$DW${SLCLR}${bold}       $(tput setaf 1)GNU/Linux  utils$(tput setaf 3)   are   NOT   in  function  . . .      ${normal}$ELCLR"
        echo "$SLCLR                                                               $ELCLR\r"
    fi
}
