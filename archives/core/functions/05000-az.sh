#     /\
#    /  \    _____   _ _  ___ _
#   / /\ \  |_  / | | | \'__/ _\
#  / ____ \  / /| |_| | | |  __/
# /_/    \_\/___|\__,_|_|  \___|

function azlist() {
  echo "$(toupper ${1})"
  az "${1}" list --output=table
}

function azlistj() {
  azlist "${1}" | foreachline 'echo "// #' "\""
  az "${1}" list --output=jsonc
}

function azlisty() {
  echo ""
  azlist "${1}" | foreachline 'echo "#' "\""
  echo "---"
  az "${1}" list --output=yamlc
  echo "..."
}

function azhelp() {
  echo ""
  echo ""
  echo "$(toupper ${@}) ――――――――"
  az "${@:-help}" --help
}

export AZLISTALL=(
  account
  cloud
  functionapp
  group
  keyvault
  lock
  resource
  tag
  webapp
  # acr
  # aks
  # apim
  # appconfig
  # aro
  # cache
  # container
  # cosmosdb
  # deployment-scripts
  # disk
  # disk-access
  # disk-encryption-set
  # dms
  # extension
  # feature
  # hdinsight
  # identity
  # image
  # managedapp
  # openshift
  # ppg
  # provider
  # redis
  # sig
  # signalr
  # snapshot
  # staticwebapp
  # ts
  # vm
  # vmss
)
function azlistall() {
  # $AZLISTALL foreachdo
  for item in $AZLISTALL[@]; do azlist $item; done
  # # azlist disk
  # azlist account
  # # azlist acr
  # # azlist aks
  # # azlist apim
  # # azlist appconfig
  # # azlist aro
  # # azlist cache
  # azlist cloud
  # # azlist container
  # # azlist cosmosdb
  # # azlist deployment-scripts
  # # azlist disk-access
  # # azlist disk-encryption-set
  # # azlist dms
  # # azlist extension
  # # azlist feature
  # azlist functionapp
  # azlist group
  # # azlist hdinsight
  # # azlist identity
  # # azlist image
  # azlist keyvault
  # azlist lock
  # # azlist managedapp
  # # azlist openshift
  # # azlist ppg
  # # azlist provider
  # # azlist redis
  # azlist resource
  # # azlist sig
  # # azlist signalr
  # # azlist snapshot
  # # azlist staticwebapp
  # azlist tag
  # # azlist ts
  # # azlist vm
  # # azlist vmss
  # azlist webapp
}

function azlistallj() {
  echo '['
  # azlistj disk
  # echo ','
  azlistj account
  echo ','
  # azlistj acr
  # echo ','
  # azlistj aks
  # echo ','
  # azlistj apim
  # echo ','
  # azlistj appconfig
  # echo ','
  # azlistj aro
  # echo ','
  # azlistj cache
  # echo ','
  azlistj cloud
  echo ','
  # azlistj container
  # echo ','
  # azlistj cosmosdb
  # echo ','
  # azlistj deployment-scripts
  # echo ','
  # azlistj disk-access
  # echo ','
  # azlistj disk-encryption-set
  # echo ','
  # azlistj dms
  # echo ','
  # azlistj extension
  # echo ','
  # azlistj feature
  # echo ','
  azlistj functionapp
  echo ','
  azlistj group
  echo ','
  # azlistj hdinsight
  # echo ','
  # azlistj identity
  # echo ','
  # azlistj image
  # echo ','
  azlistj keyvault
  echo ','
  azlistj lock
  echo ','
  # azlistj managedapp
  # echo ','
  # azlistj openshift
  # echo ','
  # azlistj ppg
  # echo ','
  # azlistj provider
  # echo ','
  # azlistj redis
  # echo ','
  azlistj resource
  echo ','
  # azlistj sig
  # echo ','
  # azlistj signalr
  # echo ','
  # azlistj snapshot
  # echo ','
  # azlistj staticwebapp
  # echo ','
  azlistj tag
  echo ','
  # azlistj ts
  # echo ','
  # azlistj vm
  # echo ','
  # azlistj vmss
  # echo ','
  azlistj webapp
  echo ']'

}

function azlistally() {
  # azlisty disk
  azlisty account
  # azlisty acr
  # azlisty aks
  # azlisty apim
  # azlisty appconfig
  # azlisty aro
  # azlisty cache
  azlisty cloud
  # azlisty container
  # azlisty cosmosdb
  # azlisty deployment-scripts
  # azlisty disk-access
  # azlisty disk-encryption-set
  # azlisty dms
  # azlisty extension
  # azlisty feature
  azlisty functionapp
  azlisty group
  # azlisty hdinsight
  # azlisty identity
  # azlisty image
  azlisty keyvault
  azlisty lock
  # azlisty managedapp
  # azlisty openshift
  # azlisty ppg
  # azlisty provider
  # azlisty redis
  azlisty resource
  # azlisty sig
  # azlisty signalr
  # azlisty snapshot
  # azlisty staticwebapp
  azlisty tag
  # azlisty ts
  # azlisty vm
  # azlisty vmss
  azlisty webapp
}

function azhelpall() {

  #     /\
  #    /  \    _____   _ _  ___ _
  #   / /\ \  |_  / | | | \'__/ _\
  #  / ____ \  / /| |_| | | |  __/
  # /_/    \_\/___|\__,_|_|  \___|
  local __FILE=$(tolower $(getstamp 4 azure-help- .txt))

  az --version >"${__FILE}"

  azhelp account >>"${__FILE}"
  azhelp acr >>"${__FILE}"
  azhelp ad >>"${__FILE}"
  azhelp advisor >>"${__FILE}"
  azhelp aks >>"${__FILE}"
  azhelp ams >>"${__FILE}"
  azhelp apim >>"${__FILE}"
  azhelp appconfig >>"${__FILE}"
  azhelp appservice >>"${__FILE}"
  azhelp aro >>"${__FILE}"
  azhelp backup >>"${__FILE}"
  azhelp batch >>"${__FILE}"
  azhelp billing >>"${__FILE}"
  azhelp bot >>"${__FILE}"
  azhelp cache >>"${__FILE}"
  azhelp cdn >>"${__FILE}"
  azhelp cloud >>"${__FILE}"
  azhelp cognitiveservices >>"${__FILE}"
  azhelp config >>"${__FILE}"
  azhelp configure >>"${__FILE}"
  azhelp consumption >>"${__FILE}"
  azhelp container >>"${__FILE}"
  azhelp cosmosdb >>"${__FILE}"
  azhelp deployment >>"${__FILE}"
  azhelp deployment-scripts >>"${__FILE}"
  azhelp deploymentmanager >>"${__FILE}"
  azhelp disk >>"${__FILE}"
  azhelp disk-access >>"${__FILE}"
  azhelp disk-encryption-set >>"${__FILE}"
  azhelp dla >>"${__FILE}"
  azhelp dls >>"${__FILE}"
  azhelp dms >>"${__FILE}"
  azhelp eventgrid >>"${__FILE}"
  azhelp eventhubs >>"${__FILE}"
  azhelp extension >>"${__FILE}"
  azhelp feature >>"${__FILE}"
  azhelp feedback >>"${__FILE}"
  azhelp find >>"${__FILE}"
  azhelp functionapp >>"${__FILE}"
  azhelp group >>"${__FILE}"
  azhelp hdinsight >>"${__FILE}"
  azhelp identity >>"${__FILE}"
  azhelp image >>"${__FILE}"
  azhelp interactive >>"${__FILE}"
  azhelp iot >>"${__FILE}"
  azhelp keyvault >>"${__FILE}"
  azhelp kusto >>"${__FILE}"
  azhelp lab >>"${__FILE}"
  azhelp local-context >>"${__FILE}"
  azhelp lock >>"${__FILE}"
  azhelp login >>"${__FILE}"
  azhelp logout >>"${__FILE}"
  azhelp managedapp >>"${__FILE}"
  azhelp managedservices >>"${__FILE}"
  azhelp maps >>"${__FILE}"
  azhelp mariadb >>"${__FILE}"
  azhelp monitor >>"${__FILE}"
  azhelp mysql >>"${__FILE}"
  azhelp netappfiles >>"${__FILE}"
  azhelp network >>"${__FILE}"
  azhelp openshift >>"${__FILE}"
  azhelp policy >>"${__FILE}"
  azhelp postgres >>"${__FILE}"
  azhelp ppg >>"${__FILE}"
  azhelp provider >>"${__FILE}"
  azhelp redis >>"${__FILE}"
  azhelp relay >>"${__FILE}"
  azhelp reservations >>"${__FILE}"
  azhelp resource >>"${__FILE}"
  azhelp rest >>"${__FILE}"
  azhelp role >>"${__FILE}"
  azhelp search >>"${__FILE}"
  azhelp security >>"${__FILE}"
  azhelp servicebus >>"${__FILE}"
  azhelp sf >>"${__FILE}"
  azhelp sig >>"${__FILE}"
  azhelp signalr >>"${__FILE}"
  azhelp snapshot >>"${__FILE}"
  azhelp sql >>"${__FILE}"
  azhelp staticwebapp >>"${__FILE}"
  azhelp storage >>"${__FILE}"
  azhelp synapse >>"${__FILE}"
  azhelp tag >>"${__FILE}"
  azhelp ts >>"${__FILE}"
  azhelp upgrade >>"${__FILE}"
  azhelp version >>"${__FILE}"
  azhelp vm >>"${__FILE}"
  azhelp vmss >>"${__FILE}"
  azhelp webapp >>"${__FILE}"
  cat "${__FILE}"
}
