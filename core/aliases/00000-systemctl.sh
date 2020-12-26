function systemctllistbefore() {
  # Show the units that are ordered after the specified unit.
  # In other words, recursively list units following the Before= dependency.
  echo "The units that are ordered after the specified unit."
  sudo systemctl list-dependencies ${@} --no-pager --with-dependencies --before

}

function systemctllistafter() {
  # Show the units that are ordered before the specified unit.
  # In other words, recursively list units following the After= dependency.
  echo "The units that are ordered before the specified unit."
  sudo systemctl list-dependencies ${@} --no-pager --with-dependencies --after
}

function systemctllistboth() {
  # Show the units that are ordered before the specified unit.
  # In other words, recursively list units following the After= dependency.

  systemctllistbefore ${@}
  echo ""
  echo "Recursively list units following the Before= dependency."
  echo ""
  echo "${@}"
  echo ""
  echo "Recursively list units following the After= dependency."
  echo ""
  systemctllistafter ${@}
}

# alias [-p] [nom[=valeur] ...]
# La commande alias, sans argument ou avec l'option -p affiche sur la sortie
# standard la liste des alias actuellement définis, sous la forme nom=valeur.
# Lorsque l'on fournit des arguments, un alias est créé pour chaque nom auquel
# on a donné une valeur. Un espace final dans une valeur forcera la recherche
# d'alias dans le mot suivant lors de l'expansion de l'alias. Pour chacun des
# noms pour lesquels aucune valeur n'est fournie dans la liste d'arguments, le
# nom et la valeur de l'alias sont affichés. La commande Alias renvoie vrai,
# sauf si l'on indique un nom pour lequel aucun alias n'a été défini.
