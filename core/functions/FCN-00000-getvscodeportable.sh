#$ LUXCIUM LICENSE *NO* PERMISSION GRANTED - PROVIDED "AS IS" - WITHOUT WARRANTY
#$
#% Copyright © 2020 - LUXCIUM† (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#%
#% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
#% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR OTHER
#% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#% SOFTWARE.
#&
#& *NO* PERMISSION ARE GRANTED. NOT TO PUBLISH, NOT TO DISTRIBUTE, NOT TO
#& SUBLICENSE, AND/OR NOT TO SELL COPIES OF THE SOFTWARE.
#& YOU MAY USE IT ONLY FOR YOURSELF AND YOU HAVE THE RIGHT TO: DISTRIBUTE TO
#& YOUR FRIENDS, TO YOUR STUDENTS, OR TO YOU COWORKER FOR PERSONAL USE AT HOME
#& AT SCHOOL OR AT WORK.
#&
#& IN ANY CASES THE COPYRIGHT AND NOTICE ABOVE MUST BE INCLUDED.
#$
#$ Scientia es lux principium✨ ™

# /home/luxcium/ahmyzsh/custom-zsh/sources/functions/getvscodeportable.zsh
function getvscodeportable() {
  (
    {

      ## CONSTANTS DEFINITIONS
      # † ======================================================================

      VSCODEURL_STABLE_RPM='https://go.microsoft.com/fwlink/?LinkID=760867'
      VSCODEURL_STABLE_TAR_GZ='https://go.microsoft.com/fwlink/?LinkID=620884'
      VSCODEURL_INSIDERS_RPM='https://go.microsoft.com/fwlink/?LinkID=760866'
      VSCODEURL_INSIDERS_TAR_GZ='https://go.microsoft.com/fwlink/?LinkId=723968'
      VSCODESHORTPATH_STABLE='code'
      VSCODESHORTPATH_INSIDERS='code-insiders'
      VSINSIDERSCHANNEL='INSIDERS'
      VSCODESTABLECHANNEL='STABLE'

      # ========================================================================

      ## CUSTOM VARIABLES DEFINITIONS
      # † ======================================================================

      # sudo nice -n -35 ionice -c 1 -n 0
      _NICE_VAL='35'
      _IONICE_C='2'
      # _IONICE_N='2'

      #       Options :
      #   -c, --class <classe>  nom ou numéro de classe d’ordonnancement
      #                           0 : aucune,
      #                           1 : temps réel,
      #   -n, --classdata <nbr> priorité (0-7) dans les classes d’ordonnancement
      #                           2 : au mieux,
      #   -n, --classdata <nbr> priorité (0-7) dans les classes d’ordonnancement
      #                           3 : au ralenti

      vscoderpm="${VSCODEURL_STABLE_RPM}"
      vscodeshortpath="${VSCODESHORTPATH_STABLE}"
      vschannel="${VSCODESTABLECHANNEL}"

      iamtheuser="$(whoami)"

      ## vschannel="${1}" # 'STABLE' or 'INSIDERS'
      if [[ "${1}" = 'INSIDERS' ]]; then
        vschannel="${VSINSIDERSCHANNEL}"
        vscoderpm="${VSCODEURL_INSIDERS_RPM}"
        vscodeshortpath="${VSCODESHORTPATH_INSIDERS}"
      else
        vschannel="${VSCODESTABLECHANNEL}"
        vscoderpm="${VSCODEURL_STABLE_RPM}"
        vscodeshortpath="${VSCODESHORTPATH_STABLE}"
      fi

      # ========================================================================

      ## UTILITY FUNCTIONS DEFINITIONS
      # † ======================================================================

      function RANDMX() {
        rand1=$(sha224hmac <<<$(date +%s%N) | cut -c -${1} | tr \[a-z\] \[A-Z\])
        echo -n "${rand1}"
        exit 0
      }

      function LUXID() {
        local myxuidhash="$(RANDMX 10)"
        local myxuiddate="$(date +%C%y%m%d%H%M%S)$(date +%N | cut -c -3)"
        local fooY="${myxuidhash}LXZ${myxuiddate}ID"
        local fooZ="${fooY:0:1}${fooY:13:2}${fooY:1:1}${fooY:15:2}${fooY:2:1}${fooY:17:2}${fooY:3:1}${fooY:19:2}${fooY:4:1}${fooY:21:2}${fooY:5:1}${fooY:23:2}${fooY:6:1}${fooY:10:2}${fooY:30:2}${fooY:12:1}${fooY:7:1}${fooY:25:2}${fooY:8:1}${fooY:27:3}${fooY:9:1}"

        echo -n $fooZ
        exit 0
      }
      # ========================================================================

      ## INTERNAL VARIABLES DEFINITIONS
      # † ======================================================================

      myuxidlong="$(LUXID)"
      working_location="$(echo LXCM-vscode-$(date +%s)-${myuxidlong}-${vschannel} | tr \[a-z\] \[A-Z\])"
      working_location="/tmp/${working_location}"
      download_location="${working_location}/download"

      ## CREATE THE DOWNLOAD FOLDER IN /tmp
      # † ======================================================================

      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 mkdir -p "${download_location}") || exit 1
      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 chown -R ${iamtheuser} "${working_location}") || exit 1

      unset -v VSCODEURL_STABLE_RPM
      unset -v VSCODEURL_STABLE_TAR_GZ
      unset -v VSCODEURL_INSIDERS_RPM
      unset -v VSCODEURL_INSIDERS_TAR_GZ
      unset -v VSCODESHORTPATH_STABLE
      unset -v VSCODESHORTPATH_INSIDERS
      unset -v VSINSIDERSCHANNEL
      unset -v VSCODESTABLECHANNEL
      unset -f RANDMX
      unset -f LUXID
      # ========================================================================
    }

    {

      ## DOWNLOAD FROM MICROSOFT
      # † ======================================================================
      cd ${download_location}

      echo -e "\n >    download ${vschannel}.x86_64.rpm from microsoft server"
      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 curl -O -L -J -S# "${vscoderpm}") || exit 1

      myUXIDshort="$(date +%s)-${myuxidlong:7:11}L-${vschannel}"

      cd ${working_location}

      for f in $(ls ${download_location}/*code*.x86_64.rpm); do
        (
          sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 rpm2cpio "$f" |
            sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 cpio -idm --no-absolute-filenames &>/dev/null
        ) || exit 1
      done

      sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 chown -R ${iamtheuser} "${working_location}" >/dev/null

      # ========================================================================
    }

    {
      ## CREATING THE PORTABLE VERSION
      # † ======================================================================
      (zsh -c vsbackup) &>/dev/null
      if [[ -d "/etc/vscode-portable/vs-${vscodeshortpath}/" ]]; then
        cp -r "/etc/vscode-portable/templates/vs-${vscodeshortpath}/" "${working_location}"
      else
        mkdir -p "${working_location}/vs-${vscodeshortpath}/data/tmp"
      fi

      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 cp -uLr /etc/vscode-portable/backup/${vscodeshortpath}/data/user-data ${working_location}/vs-${vscodeshortpath}/data/user-data) &>/dev/null

      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 cp -vuLr /etc/vscode-portable/backup/${vscodeshortpath}/data/extensions ${working_location}/vs-${vscodeshortpath}/data/) &>/dev/null

      cp -r "${working_location}/usr/share/${vscodeshortpath}" "${working_location}/tmp-${vscodeshortpath}"
      cp -r "${working_location}/usr/share/pixmaps/" "${working_location}/vs-${vscodeshortpath}/pixmaps/"

      for f in $(ls "${working_location}/tmp-${vscodeshortpath}"); do
        sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 cp -r "${working_location}/tmp-${vscodeshortpath}/$f" "${working_location}/vs-${vscodeshortpath}/" ||  exit 1
      done
      # ========================================================================
    }

    {
      ## MOVING STUFF TO HOME FOLDER
      # † ======================================================================

      vs_code_='code_'
      if [[ "${2}" = 'UPDATE' ]]; then
        vs_code_='code_update_'
      fi

      vs_code_home_path="${HOME}/portable-vscode"
      full_path_to_vscode_home_folder="${vs_code_home_path}/$(date +%d-%m-%C%y_%Hh%Mm%Ss)_${vs_code_}${myUXIDshort}"

      mkdir -p "${vs_code_home_path}/"

      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 chown -R ${iamtheuser} "${working_location}") ||  exit 1
      (sudo groupadd "luxcium.io" &>/dev/null)
      (sudo nice -n "${_NICE_VAL}" ionice -c "${_IONICE_C}" -n 1 chgrp -R "luxcium.io" "${working_location}")

      mv "${working_location}/vs-${vscodeshortpath}/" "${full_path_to_vscode_home_folder}/"
      sudo rm -rf "${working_location}"

      echo "'${myUXIDshort}':"
      echo "${full_path_to_vscode_home_folder}/"
      echo "${full_path_to_vscode_home_folder}/bin/code"
      cd "${full_path_to_vscode_home_folder}/"

      if [[ "${2}" = 'UPDATE' ]]; then
        rm -fr "${full_path_to_vscode_home_folder}/project"
        rm -fr "${full_path_to_vscode_home_folder}/data"

        if [[ "${1}" = 'INSIDERS' ]]; then
          rm -fr "${full_path_to_vscode_home_folder}/code-insiders.png"
          cp "${full_path_to_vscode_home_folder}/icons/visual-studio-code-insiders..bsvg" "${full_path_to_vscode_home_folder}/code-insiders.svg"
        else
          rm -fr "${full_path_to_vscode_home_folder}/code.png"
          cp "${full_path_to_vscode_home_folder}/icons/visualstudiocode.svg" "${full_path_to_vscode_home_folder}/code.svg"
        fi
      fi
      # ========================================================================
    }
  ) ||
    return 1
  if [[ "${2}" = 'UPDATE' ]]; then
    echo -e "\n   -UPDATE-" && return 0
  else
    echo -e "\n   -OK-" && return 0
  fi
}
