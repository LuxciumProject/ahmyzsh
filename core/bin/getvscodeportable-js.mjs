#!/bin/env node
/*
 $ LUXCIUM LICENSE *NO* PERMISSION GRANTED - PROVIDED "AS IS" - WITHOUT WARRANTY
 $
 % Copyright © 2020 - LUXCIUM† (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
 %
 % THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
 % IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 % FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 % AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR OTHER
 % LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 % OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 % SOFTWARE.
 &
 & *NO* PERMISSION ARE GRANTED. NOT TO PUBLISH, NOT TO DISTRIBUTE, NOT TO
 & SUBLICENSE, AND/OR NOT TO SELL COPIES OF THE SOFTWARE.
 & YOU MAY USE IT ONLY FOR YOURSELF AND YOU HAVE THE RIGHT TO: DISTRIBUTE TO
 & YOUR FRIENDS, TO YOUR STUDENTS, OR TO YOU COWORKER FOR PERSONAL USE AT HOME
 & AT SCHOOL OR AT WORK.
 &
 & IN ANY CASES THE COPYRIGHT AND NOTICE ABOVE MUST BE INCLUDED.
 $
 $ Scientia es lux principium✨ ™
*/
import {
    exec, execSync,
    spawn,
    spawnSync
} from 'child_process';



// # /home/luxcium/ahmyzsh/core/bin/getvscodeportable-v3
// function getvscodeportable_() {
//   {
// # CONSTANTS AND VARIABLES DEFINITIONS
// † ======================================================================

const VSCODE_URL_STABLE = 'https://update.code.visualstudio.com/latest/linux-x64/stable';
const VSCODE_SHORTPATH_STABLE = 'code-stable';
const VSCODE_CHANNEL_STABLE = 'stable';

export const VSCODE_URL_INSIDER = 'https://update.code.visualstudio.com/latest/linux-x64/insider';
export const VSCODE_SHORTPATH_INSIDER = 'code-insider';
export const VSCODE_CHANNEL_INSIDER = 'insider';

// # CUSTOM VARIABLES DEFINITIONS
// † ===========================================================================


export let vscode_url = `${VSCODE_URL_STABLE}`;
export let vscode_shortpath = `${VSCODE_SHORTPATH_STABLE}`;
export let vscode_channel = `${VSCODE_CHANNEL_STABLE}`;;

console.log(process.cwd())
exec('pwd', (err, stdout, stderr) => {
  if (err) {
    console.error(err);
    console.error(stderr);
    return;
  }
  console.log(stdout);

});


const cp =  {exec,
  execSync,
  spawn,
  spawnSync,}
// const cp = require('child_process');

const exec_options = {
    cwd: null,
    env: null,
    encoding: 'utf8',
    timeout: 0,
    maxBuffer: 200 * 1024,
    killSignal: 'SIGTERM'
};

// exec
cp.exec('ls -l', exec_options, (err, stdout, stderr) => {
    console.log('#1. exec')
    console.log(stdout);
  console.error(stderr);
if (err) console.error(err);
});


// exec sync
try {
    const data = cp.execSync('ls -l', exec_options);
    console.log('#2. exec sync')
    console.log(data.toString());
} catch (err) {

}


const spawn_options = {
    cwd: null,
    env: null,
    detached: false
};

// spawn
const ls = cp.spawn('ls', ['-l'], spawn_options);

ls.stdout.on('data', stdout => {
    console.log('#3. spawn')
    console.log(stdout.toString());
});

ls.stderr.on('data', stderr => {
    console.log(stderr.toString());
});

ls.on('close', code => {
    // ended with code
  console.log(code.toString());
});


// spawn sync
const { stdout, stderr, pid, status } = cp.spawnSync('ls', ['-l','--color'], spawn_options);
console.log('#4. spawn sync')
console.log(stdout.toString());
console.error(stderr.toString());
console.info(status.toString());
console.info(pid.toString());

// spawn('pwd', (err, stdout, stderr) => {
//   if (err) {
//     console.error(err);
//     console.error(stderr);
//     return;
//   }
//   console.log(stdout);

// });

    // vschannel='STABLE' # 'STABLE' or 'INSIDER'

//     if [[ "${1}" = 'INSIDER' ]]; then
//       vscode_url="${VSCODE_URL_INSIDER}"
//       vscode_shortpath="${VSCODE_SHORTPATH_INSIDER}"
//       vscode_channel="${VSCODE_CHANNEL_INSIDER}"
//       vschannel='INSIDER'
//     fi

//     ## INTERNAL VARIABLES DEFINITIONS
//     # † ======================================================================

//     myuxidlong="$(LUXID)"
//     working_location="/tmp/$(echo LXCM/vscode-${vscode_channel}/$(shortID))"
//     download_location="${working_location}/download"
//     myUXIDshort=$(shortID)

//     ## CREATE THE DOWNLOAD FOLDER IN /tmp
//     # † ======================================================================

//     iamtheuser="$(whoami)"
//     echo iamtheuser="$(whoami)"
//     (sudo mkdir -p "${download_location}") || exit 2
//     (sudo chown -R ${iamtheuser} "${working_location}") || exit 3

//     # ========================================================================

//     unset -v VSCODE_URL_STABLE
//     unset -v VSCODE_SHORTPATH_STABLE
//     unset -v VSCODE_CHANNEL_STABLE
//     unset -v VSCODE_URL_INSIDER
//     unset -v VSCODE_SHORTPATH_INSIDER
//     unset -v VSCODE_CHANNEL_INSIDER

//     # ========================================================================

//   }

//   ## DOWNLOAD FROM MICROSOFT
//   {
//     # † ======================================================================

//     (ls ${download_location}) || exit 5
//     cd ${download_location}

//     echo -e "> download ${vscode_channel}-x64.tar.gz FROM MICROSOFT (into $download_location)"
//     (sudo curl -LORJS# "${vscode_url}") || exit 4

//     # ========================================================================
//   }

//   ## EXTRACT FROM TAR FILE
//   {
//     # † ======================================================================
//     cd ${working_location}
//     (ls ${download_location}/${vscode_shortpath}-x64-*.tar.gz) || exit 5

//     for file_ in $(ls ${download_location}/${vscode_shortpath}-x64-*.tar.gz); do
//       (
//         sudo tar --extract -f ${file_} --overwrite ## WHERE THE MAGIC HAPPENS
//       ) || exit 6
//     done
//     # ========================================================================
//   }

//   {
//     mv "${working_location}/VSCode-linux-x64" "${working_location}/vs-${vscode_shortpath}"

//     sudo mkdir -p "${working_location}/vs-${vscode_shortpath}/data/tmp"
//     vs_code_='code_'
//     if [[ "${2}" = 'UPDATE' ]]; then
//       vs_code_='code_update_'
//     fi

//     vs_code_home_path="${HOME}/portable-vscode"
//     full_path_to_vscode_home_folder="${vs_code_home_path}/$(date +%d-%m-%C%y_%Hh%Mm%Ss)_${vs_code_}${myUXIDshort}"

//     mkdir -p "${vs_code_home_path}/"

//     (sudo groupadd -f "luxcium.io" &>/dev/null)
//     (sudo chown -R ${iamtheuser} "${working_location}")
//     (sudo chgrp -R "luxcium.io" "${working_location}")

//     sudo cp -r /etc/vscode-portable/empty/vs-code-${vscode_channel}/* "${working_location}/vs-${vscode_shortpath}/"
//     sudo cp -r /etc/vscode-portable/empty/vs-code-${vscode_channel}/.directory "${working_location}/vs-${vscode_shortpath}/"
//     sudo cp -r "${working_location}/vs-${vscode_shortpath}/" "${full_path_to_vscode_home_folder}/"
//     if [[ "${2}" = 'UPDATE' ]]; then
//       sudo rm "${full_path_to_vscode_home_folder}/code.png"
//       sudo cp -r "/etc/vscode-portable/templates/vs-code/icons/vscode.svg" "${full_path_to_vscode_home_folder}/code.svg"

//     else
//       sudo rm "${full_path_to_vscode_home_folder}/code.png"
//       sudo cp -r "/etc/vscode-portable/templates/vs-code/icons/folder-vscode.svg" "${full_path_to_vscode_home_folder}/code.svg"

//     fi

//     (sudo groupadd -f "vs-${vscode_channel}" &>/dev/null)
//     (sudo chown -R ${iamtheuser} "${full_path_to_vscode_home_folder}")
//     (sudo chgrp -R "vs-${vscode_channel}" "${full_path_to_vscode_home_folder}")

//     sudo rm -rf "${working_location}"

//     # ========================================================================
//   } || (
//     EX_STATUS="${?}"
//     echo -e "\n   -ERROR-" && exit ${EX_STATUS}
//   ) &&
//     # if [[ "${2}" = 'UPDATE' ]]; then
//     #   echo -e "\n   ― ${vschannel} ―"
//     #   echo -e "   ― UPDATE ―\n" && exit 0

//     # else
//     echo -e "\n   ― ${vschannel} ―\n" && exit 0
//   # fi
// }
// # ==============================================================================

// ## UTILITY FUNCTIONS DEFINITIONS
// # † ======================================================================

// function RANDMX() {
//   rand1=$(sha224sum <<<$(date +%s%N) | cut -c -${1} | tr \[a-z\] \[A-Z\])
//   echo -n "${rand1}"
//   return 0
// }

// function shortID() {
//   local fooZ="$(date +%s)-x$(RANDMX 4)"

//   echo -n $fooZ
//   return 0
// }
// function LUXID() {
//   local myxuidhash="$(RANDMX 10)"
//   local myxuiddate="$(date +%C%y%m%d%H%M%S)$(date +%N | cut -c -3)"
//   local fooY="${myxuidhash}LXZ${myxuiddate}ID"
//   local fooZ="${fooY:0:1}${fooY:13:2}${fooY:1:1}${fooY:15:2}${fooY:2:1}${fooY:17:2}${fooY:3:1}${fooY:19:2}${fooY:4:1}${fooY:21:2}${fooY:5:1}${fooY:23:2}${fooY:6:1}${fooY:10:2}${fooY:30:2}${fooY:12:1}${fooY:7:1}${fooY:25:2}${fooY:8:1}${fooY:27:3}${fooY:9:1}"

//   echo -n $fooZ
//   exit 0
// }
// # ==============================================================================

// ## Extra code make it easy to copy paste only the function out to use elsewhere
// getvscodeportable_ ${@}

// EX_STATUS="${?}"

// unset -f getvscodeportable_

// exit ${EX_STATUS}

/*

 - Asynchronous process creation
child_process.exec(command[, options][, callback])
child_process.execFile(file[, args][, options][, callback])
child_process.fork(modulePath[, args][, options])
child_process.spawn(command[, args][, options])
options.detached
options.stdio

 - Synchronous process creation
child_process.execFileSync(file[, args][, options])
child_process.execSync(command[, options])
child_process.spawnSync(command[, args][, options])

 */
