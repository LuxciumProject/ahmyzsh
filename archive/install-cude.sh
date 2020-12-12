#!/usr/bin/env sh

#† LUXCIUM LICENSE *NO* PERMISSION GRANTED - PROVIDED "AS IS" - WITHOUT WARRANTY
#+ PROVIDED "AS IS" - WITHOUT WARRANTY - *DO NOT* RUN THIS FILE ON ANY MACHINE
#+ THIS FILE IS *NOT* FIT FOR ANY PARTICULAR PURPOSE IN IT'S CURRENT FORM
#† Copyright © 2020 - LUXCIUM† (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#+ THIS FILE HAVE NOT BEEN TESTET OR RUN YET! *DO NOT* RUN THIS FILE UNLESS
#+ YOU HAVE REVIEWED THE FULL CONTENT AND TAKE FULL RESPOSABILITY OF ANY
#+ PROBLEME IT MAY CAUSE TO YOU (or anyone) OR YOUR MACHINE (or any machine)
#† Scientia es lux principium✨ ™

## get into '/tmp' to work ...
#+ -----------------------------------------------------------------------------
INSTALLDIRNAME="/tmp/cuda-install-$(date +%s)"
sudo mkdir ${INSTALLDIRNAME}
sudo chown $(whoami) ${INSTALLDIRNAME}
cd ${INSTALLDIRNAME}

## Verify the system has a CUDA-capable GPU.
#+ -----------------------------------------------------------------------------
lspci | grep -i nvidia &>/dev/null || sudo update-pciids

lsmod | grep nouveau && (
  echo "please blacklist nouveau"
  exit 2
)

# Create a file at /usr/lib/modprobe.d/blacklist-nouveau.conf
# with the following contents:
# blacklist nouveau
# options nouveau modeset=0

## Verify the system is running a supported version of Linux.
#+ -----------------------------------------------------------------------------
uname -a && cat /etc/*release

## Verify the system has gcc installed.
#+ -----------------------------------------------------------------------------
gcc --version

## Verify the system has the correct kernel headers and deve packages installed.
#+ -----------------------------------------------------------------------------
sudo dnf -y clean expire-cache
sudo dnf -y clean all
sudo dnf -y update --refresh
sudo dnf -y install kernel-devel-$(uname -r) kernel-headers-$(uname -r)

## Download the NVIDIA CUDA Toolkit.
#+ -----------------------------------------------------------------------------
wget http://developer.download.nvidia.com/compute/cuda/11.0.2/local_installers/cuda-repo-rhel8-11-0-local-11.0.2_450.51.05-1.x86_64.rpm
sudo rpm -i cuda-repo-rhel8-11-0-local-11.0.2_450.51.05-1.x86_64.rpm
sudo dnf clean all

## Handle conflicting installation methods.
#+ -----------------------------------------------------------------------------
sudo /usr/local/cuda-*/bin/uninstall_cuda_*.pl
sudo dnf -y remove "*cuda*"
sudo /usr/bin/nvidia-uninstall
sudo dnf -y remove "*nvidia*"
sudo dnf -y remove "*kmod*"
# sudo rm -rf /usr/local/cuda*

## Address custom xorg.conf, if applicable
#+ -----------------------------------------------------------------------------
# The driver relies on an automatically generated xorg.conf file at
# /etc/X11/xorg.conf. If a custom-built xorg.conf file is present, this
# functionality will be disabled and the driver may not work. You can try
# removing the existing xorg.conf file, or adding the contents of
# /etc/X11/xorg.conf.d/00-nvidia.conf to the xorg.conf file. The xorg.conf file
# will most likely need manual tweaking for systems with a non-trivial
# GPU configuration.
(sudo mv "/etc/X11/xorg.conf" "/etc/X11/xorg.conf~$(date +%s).bak") &>/dev/null

## Satisfy Akmods dependency
#+ -----------------------------------------------------------------------------
# The NVIDIA driver RPM packages depend on the Akmods framework which is
# provided by the RPMFusion free repository. The RPMFusion free repository must
# be added to the package manager repository database before installing the
# NVIDIA driver RPM packages, or missing dependencies will prevent the
# installation from proceeding.

## Install repository meta-data
#+ -----------------------------------------------------------------------------
# Already completed in «Download the NVIDIA CUDA Toolkit» step
# wget http://developer.download.nvidia.com/compute/cuda/11.0.2/\
# local_installers/cuda-repo-rhel8-11-0-local-11.0.2_450.51.05-1.x86_64.rpm
# sudo rpm -i cuda-repo-rhel8-11-0-local-11.0.2_450.51.05-1.x86_64.rpm
# sudo dnf clean all

## Clean DNF repository cache
#+ -----------------------------------------------------------------------------
sudo dnf clean expire-cache

## Install CUDA
#+ -----------------------------------------------------------------------------
sudo dnf -y install cuda

# The CUDA driver installation may fail if the RPMFusion non-free repository
# is enabled. In this case, CUDA installations should temporarily disable the
# RPMFusion non-free repository:
sudo dnf -y --disablerepo="rpmfusion-nonfree*" install cuda

# If a system has installed both packages with the same instance of dnf,
# some driver components may be missing. Such an installation can be corrected
# by running:
sudo dnf -y install cuda-drivers

## Optional Actions
#+ -----------------------------------------------------------------------------
sudo dnf -y install freeglut-devel libX11-devel libXi-devel libXmu-devel \
  make mesa-libGLU-devel

## Finalise
#+ -----------------------------------------------------------------------------
sudo dracut --force -v
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo dracut --uefi --force -v
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

echo "PLEASE REBOOT NOW!!!"
echo "PLEASE REBOOT NOW!!!"
echo "PLEASE REBOOT NOW!!!"

#!! REBOOT

## Add libcuda.so symbolic link, if necessary
#+ -----------------------------------------------------------------------------
# The libcuda.so library is installed in the /usr/lib{,64}/nvidia directory.
# For pre-existing projects which use libcuda.so, it may be useful to add a
# symbolic link from libcuda.so in the /usr/lib{,64} directory.

## Environment Setup
#+ -----------------------------------------------------------------------------
# The PATH variable needs to include
# $ export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}.
# Nsight Compute has moved to /opt/nvidia/nsight-compute/ only in rpm/deb
# installation method. When using .run installer it is still located under
# /usr/local/cuda-11.0/.

# To add this path to the PATH variable:

# $ export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}
# In addition, when using the runfile installation method, the LD_LIBRARY_PATH
# variable needs to contain /usr/local/cuda-11.0/lib64 on a 64-bit system, or
# /usr/local/cuda-11.0/lib on a 32-bit system

# To change the environment variables for 64-bit operating systems:

# $ export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64\
#                          ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# To change the environment variables for 32-bit operating systems:

# $ export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib\
#                          ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# Note that the above paths change when using a custom install path with the
# runfile installation method.

## Recommended Actions
#+ -----------------------------------------------------------------------------

## Other actions are recommended to verify the integrity of the installation.
#+ -----------------------------------------------------------------------------

## Install Persistence Daemon
#+ -----------------------------------------------------------------------------
# NVIDIA is providing a user-space daemon on Linux to support persistence of
# driver state across CUDA job runs. The daemon approach provides a more
# elegant and robust solution to this problem than persistence mode. For more
# details on the NVIDIA Persistence Daemon, see the documentation here.

# The NVIDIA Persistence Daemon can be started as the root user by running:
# $ /usr/bin/nvidia-persistenced --verbose
# This command should be run on boot. Consult your Linux distribution's init
# documentation for details on how to automate this.

## Install Writable Samples
#+ -----------------------------------------------------------------------------
# In order to modify, compile, and run the samples, the samples must be
# installed with write permissions. A convenience installation script is
# provided:
# $ cuda-install-samples-11.0.sh <dir>
# This script is installed with the cuda-samples-11-0 package.
# The cuda-samples-11-0 package installs only a read-only copy in
# /usr/local/cuda-11.0/samples.

## Verify the Installation
#+ -----------------------------------------------------------------------------
# Before continuing, it is important to verify that the CUDA toolkit can find
# and communicate correctly with the CUDA-capable hardware. To do this, you
# need to compile and run some of the included sample programs.

# Note: Ensure the PATH and, if using the runfile installation method,
# LD_LIBRARY_PATH variables are set correctly.

## Verify the Driver Version
#+ -----------------------------------------------------------------------------
# If you installed the driver, verify that the correct version of it is loaded.
# If you did not install the driver, or are using an operating system where the
# driver is not loaded via a kernel module, such as L4T, skip this step.

# When the driver is loaded, the driver version can be found by executing the
# command
# $ cat /proc/driver/nvidia/version
# Note that this command will not work on an iGPU/dGPU system.

## Compiling the Examples
#+ -----------------------------------------------------------------------------
# The version of the CUDA Toolkit can be checked by running nvcc -V in a
# terminal window. The nvcc command runs the compiler driver that compiles CUDA
# programs. It calls the gcc compiler for C code and the NVIDIA PTX compiler
# for the CUDA code.

# The NVIDIA CUDA Toolkit includes sample programs in source form. You should
# compile them by changing to ~/NVIDIA_CUDA-11.0_Samples and typing make.
# The resulting binaries will be placed under ~/NVIDIA_CUDA-11.0_Samples/bin.

## Running the Binaries
#+ -----------------------------------------------------------------------------
# After compilation, find and run deviceQuery under ~/NVIDIA_CUDA-11.0_Samples.
# If the CUDA software is installed and configured correctly, the output for
# deviceQuery should look similar to that shown in Figure 1.

# Figure 1. Valid Results from deviceQuery CUDA Sample

# The exact appearance and the output lines might be different on your system.
# The important outcomes are that a device was found (the first highlighted
# line), that the device matches the one on your system (the second highlighted
# line), and that the test passed (the final highlighted line).

# If a CUDA-capable device and the CUDA Driver are installed but deviceQuery
# reports that no CUDA-capable devices are present, this likely means that the
# /dev/nvidia* files are missing or have the wrong permissions.

# On systems where SELinux is enabled, you might need to temporarily disable
# this security feature to run deviceQuery. To do this, type:
# $ setenforce 0
# from the command line as the superuser.
# Running the bandwidthTest program ensures that the system and the CUDA-capable
# device are able to communicate correctly. Its output is shown in Figure 2.

# Figure 2. Valid Results from bandwidthTest CUDA Sample

# Note that the measurements for your CUDA-capable device description will vary
# from system to system. The important point is that you obtain measurements,
# and that the second-to-last line (in Figure 2) confirms that all necessary
# tests passed.

# Should the tests not pass, make sure you have a CUDA-capable NVIDIA GPU on
# your system and make sure it is properly installed.

# If you run into difficulties with the link step (such as libraries not being
# found), consult the Linux Release Notes found in the doc folder in the CUDA
# Samples directory.

## Optional
#+ -----------------------------------------------------------------------------

## Install Nsight Eclipse Plugins
#+ -----------------------------------------------------------------------------
# To install Nsight Eclipse plugins, an installation script is provided:
# $ /usr/local/cuda-11.0/bin/nsight_ee_plugins_manage.sh install <eclipse-dir>
# Refer to Nsight Eclipse Plugins Installation Guide for more details.

## Install the source code for cuda-gdb
#+ -----------------------------------------------------------------------------
# The cuda-gdb source must be explicitly selected for installation with the
# runfile installation method. During the installation, in the component
# selection page, expand the component "CUDA Tools 11.0" and select the
# cuda-gdb-src for installation. It is unchecked by default.

# To obtain a copy of the source code for cuda-gdb using the RPM and Debian
# installation methods, the cuda-gdb-src package must be installed.

# The source code is installed as a tarball in the
# /usr/local/cuda-11.0/extras directory.

## uname -a && cat /etc/*release
#+ -----------------------------------------------------------------------------
# Linux XXXXXXXXXX 5.7.9-200.fc32.x86_64 #1 SMP Fri Jul 17 16:23:37 UTC 2020 \
# x86_64 x86_64 x86_64 GNU/Linux
#
# Fedora release 32 (Thirty Two)
# NAME=Fedora
# VERSION="32 (KDE Plasma)"
# ID=fedora
# VERSION_ID=32
# VERSION_CODENAME=""
# PLATFORM_ID="platform:f32"
# PRETTY_NAME="Fedora 32 (KDE Plasma)"
# ANSI_COLOR="0;34"
# LOGO=fedora-logo-icon
# CPE_NAME="cpe:/o:fedoraproject:fedora:32"
# HOME_URL="https://fedoraproject.org/"
# DOCUMENTATION_URL="https://docs.fedoraproject.org/en-US/fedora/f32/system-administrators-guide/"
# SUPPORT_URL="https://fedoraproject.org/wiki/Communicating_and_getting_help"
# BUG_REPORT_URL="https://bugzilla.redhat.com/"
# REDHAT_BUGZILLA_PRODUCT="Fedora"
# REDHAT_BUGZILLA_PRODUCT_VERSION=32
# REDHAT_SUPPORT_PRODUCT="Fedora"
# REDHAT_SUPPORT_PRODUCT_VERSION=32
# PRIVACY_POLICY_URL="https://fedoraproject.org/wiki/Legal:PrivacyPolicy"
# VARIANT="KDE Plasma"
# VARIANT_ID=kde
# Fedora release 32 (Thirty Two)
# Fedora release 32 (Thirty Two)

#!! -----------------------------------------------------------------------------

#% Copyright © 2020 - LUXCIUM† (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#%
#% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
#% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR OTHER
#% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#% SOFTWARE.

## sudo dnf list "*dkms*" >>
#+ -----------------------------------------------------------------------------
#& Paquets disponibles
# dkms.noarch                                2.8.3-1.fc32      updates
# kmod-nvidia-latest-dkms.x86_64             3:450.51.06-1.el8 cuda-rhel8-x86_64

## sudo dnf list "*akmod*" >>
#+ -----------------------------------------------------------------------------
#& Paquets disponibles
# akmod-VirtualBox.x86_64                    6.1.10-1.fc32        rpmfusion-free-updates
# akmod-crystalhd.x86_64                     20170515-6.fc32      rpmfusion-free
# akmod-ndiswrapper.x86_64                   1.62-1.fc32          rpmfusion-free
# akmod-nvidia.x86_64                        3:440.100-1.fc32     rpmfusion-nonfree-updates
# akmod-nvidia-340xx.x86_64                  1:340.108-5.fc32     rpmfusion-nonfree-updates
# akmod-nvidia-390xx.x86_64                  3:390.138-1.fc32     rpmfusion-nonfree-updates
# akmod-wl.x86_64                            6.30.223.271-32.fc32 rpmfusion-nonfree
# akmod-xtables-addons.x86_64                3.9-1.fc32           rpmfusion-free
# akmods.noarch                              0.5.6-25.fc32        fedora

## sudo dnf list "*kmod*" >>
#+ -----------------------------------------------------------------------------
#& Paquets installés
# kmod.x86_64                                27-1.fc32            @anaconda
# kmod-libs.x86_64                           27-1.fc32            @anaconda
# libmikmod.x86_64                           3.3.11.1-8.fc32      @fedora
#& Paquets disponibles
# VirtualBox-kmodsrc.noarch                  6.1.10-4.fc32        rpmfusion-free-updates
# akmod-VirtualBox.x86_64                    6.1.10-1.fc32        rpmfusion-free-updates
# akmod-crystalhd.x86_64                     20170515-6.fc32      rpmfusion-free
# akmod-ndiswrapper.x86_64                   1.62-1.fc32          rpmfusion-free
# akmod-nvidia.x86_64                        3:440.100-1.fc32     rpmfusion-nonfree-updates
# akmod-nvidia-340xx.x86_64                  1:340.108-5.fc32     rpmfusion-nonfree-updates
# akmod-nvidia-390xx.x86_64                  3:390.138-1.fc32     rpmfusion-nonfree-updates
# akmod-wl.x86_64                            6.30.223.271-32.fc32 rpmfusion-nonfree
# akmod-xtables-addons.x86_64                3.9-1.fc32           rpmfusion-free
# akmods.noarch                              0.5.6-25.fc32        fedora
# kmod-VirtualBox.x86_64                     6.1.10-1.fc32        rpmfusion-free-updates
# kmod-crystalhd.x86_64                      20170515-6.fc32      rpmfusion-free
# kmod-devel.i686                            27-1.fc32            fedora
# kmod-devel.x86_64                          27-1.fc32            fedora
# kmod-libs.i686                             27-1.fc32            fedora
# kmod-ndiswrapper.x86_64                    1.62-1.fc32          rpmfusion-free
# kmod-nvidia.x86_64                         3:440.100-1.fc32     rpmfusion-nonfree-updates
# kmod-nvidia-340xx.x86_64                   1:340.108-5.fc32     rpmfusion-nonfree-updates
# kmod-nvidia-390xx.x86_64                   3:390.138-1.fc32     rpmfusion-nonfree-updates
# kmod-nvidia-latest-dkms.x86_64             3:450.51.06-1.el8    cuda-rhel8-x86_64
# kmod-wl.x86_64                             6.30.223.271-32.fc32 rpmfusion-nonfree
# kmod-xtables-addons.x86_64                 3.9-1.fc32           rpmfusion-free
# kmodtool.noarch                            1-38.fc32            fedora
# libmikmod.i686                             3.3.11.1-8.fc32      fedora
# libmikmod-devel.i686                       3.3.11.1-8.fc32      fedora
# libmikmod-devel.x86_64                     3.3.11.1-8.fc32      fedora
# mikmod.x86_64                              3.2.8-8.fc32         fedora
# nvidia-kmod-common.noarch                  3:450.51.06-1.el8    cuda-rhel8-x86_64
# perl-Test-MockModule.noarch                0.172.0-1.fc32       fedora
# python3-kmod.x86_64                        0.9-27.fc32          fedora
# xorg-x11-drv-nvidia-340xx-kmodsrc.x86_64   1:340.108-2.fc32     rpmfusion-nonfree
# xorg-x11-drv-nvidia-390xx-kmodsrc.x86_64   3:390.138-1.fc32     rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-kmodsrc.x86_64         3:440.100-1.fc32     rpmfusion-nonfree-updates

## sudo dnf list "*nvidia*"  >>
#+ -----------------------------------------------------------------------------
#& Paquets disponibles
# akmod-nvidia.x86_64                        3:440.100-1.fc32  rpmfusion-nonfree-updates
# akmod-nvidia-340xx.x86_64                  1:340.108-5.fc32  rpmfusion-nonfree-updates
# akmod-nvidia-390xx.x86_64                  3:390.138-1.fc32  rpmfusion-nonfree-updates
# dnf-plugin-nvidia.noarch                   1.6-1.el8         cuda-rhel8-x86_64
# kmod-nvidia.x86_64                         3:440.100-1.fc32  rpmfusion-nonfree-updates
# kmod-nvidia-340xx.x86_64                   1:340.108-5.fc32  rpmfusion-nonfree-updates
# kmod-nvidia-390xx.x86_64                   3:390.138-1.fc32  rpmfusion-nonfree-updates
# kmod-nvidia-latest-dkms.x86_64             3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver.x86_64                       3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-NVML.x86_64                  3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-NvFBCOpenGL.x86_64           3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-cuda.x86_64                  3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-cuda-libs.x86_64             3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-devel.x86_64                 3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-libs.x86_64                  3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-fabricmanager-450.x86_64            450.51.06-1       cuda-rhel8-x86_64
# nvidia-fabricmanager-devel-450.x86_64      450.51.06-1       cuda-rhel8-x86_64
# nvidia-kmod-common.noarch                  3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-libXNVCtrl.x86_64                   3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-libXNVCtrl-devel.x86_64             3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-modprobe.x86_64                     3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-persistenced.x86_64                 3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-query-resource-opengl.x86_64        1.0.0-7.fc32      fedora
# nvidia-query-resource-opengl-lib.i686      1.0.0-7.fc32      fedora
# nvidia-query-resource-opengl-lib.x86_64    1.0.0-7.fc32      fedora
# nvidia-settings.x86_64                     3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-settings-390xx.x86_64               390.138-1.fc32    rpmfusion-nonfree-updates
# nvidia-texture-tools.i686                  2.0.8-22.fc32     fedora
# nvidia-texture-tools.x86_64                2.0.8-22.fc32     fedora
# nvidia-texture-tools-devel.i686            2.0.8-22.fc32     fedora
# nvidia-texture-tools-devel.x86_64          2.0.8-22.fc32     fedora
# nvidia-xconfig.x86_64                      3:450.51.06-1.el8 cuda-rhel8-x86_64
# pcp-pmda-nvidia-gpu.x86_64                 5.1.1-1.fc32      updates
# xorg-x11-drv-nvidia-340xx.x86_64           1:340.108-2.fc32  rpmfusion-nonfree
# xorg-x11-drv-nvidia-340xx-devel.i686       1:340.108-2.fc32  rpmfusion-nonfree
# xorg-x11-drv-nvidia-340xx-devel.x86_64     1:340.108-2.fc32  rpmfusion-nonfree
# xorg-x11-drv-nvidia-340xx-kmodsrc.x86_64   1:340.108-2.fc32  rpmfusion-nonfree
# xorg-x11-drv-nvidia-340xx-libs.i686        1:340.108-2.fc32  rpmfusion-nonfree
# xorg-x11-drv-nvidia-340xx-libs.x86_64      1:340.108-2.fc32  rpmfusion-nonfree
# xorg-x11-drv-nvidia-390xx.x86_64           3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-cuda-libs.i686   3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-cuda-libs.x86_64 3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-devel.i686       3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-devel.x86_64     3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-kmodsrc.x86_64   3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-libs.i686        3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-libs.x86_64      3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-cuda-libs.i686         3:440.100-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-cuda-libs.x86_64       3:440.100-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-kmodsrc.x86_64         3:440.100-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-libs.i686              3:440.100-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-libs.x86_64            3:440.100-1.fc32  rpmfusion-nonfree-updates

##  sudo dnf list "*cuda*" >>
#+ -----------------------------------------------------------------------------
#& Paquets installés
# cuda-compat-11-0.x86_64                    1:450.51.05-1     @cuda-rhel8-x86_64
#& Paquets disponibles
# cuda.x86_64                                11.0.2-1          cuda-rhel8-x86_64
# cuda-10-1.x86_64                           10.1.243-1        cuda-rhel8-x86_64
# cuda-10-2.x86_64                           10.2.89-1         cuda-rhel8-x86_64
# cuda-11-0.x86_64                           11.0.2-1          cuda-rhel8-x86_64
# cuda-command-line-tools-10-1.x86_64        10.1.243-1        cuda-rhel8-x86_64
# cuda-command-line-tools-10-2.x86_64        10.2.89-1         cuda-rhel8-x86_64
# cuda-command-line-tools-11-0.x86_64        11.0.2-1          cuda-rhel8-x86_64
# cuda-compat-10-1.x86_64                    1:418.152.00-1    cuda-rhel8-x86_64
# cuda-compat-10-2.x86_64                    1:440.95.01-1     cuda-rhel8-x86_64
# cuda-compat-11-0.x86_64                    1:450.51.06-1     cuda-rhel8-x86_64
# cuda-compiler-10-1.x86_64                  10.1.243-1        cuda-rhel8-x86_64
# cuda-compiler-10-2.x86_64                  10.2.89-1         cuda-rhel8-x86_64
# cuda-compiler-11-0.x86_64                  11.0.2-1          cuda-rhel8-x86_64
# cuda-core-10-1.x86_64                      10.1.243-1        cuda-rhel8-x86_64
# cuda-core-10-2.x86_64                      10.2.89-1         cuda-rhel8-x86_64
# cuda-cudart-10-1.x86_64                    10.1.243-1        cuda-rhel8-x86_64
# cuda-cudart-10-2.x86_64                    10.2.89-1         cuda-rhel8-x86_64
# cuda-cudart-11-0.x86_64                    11.0.194-1        cuda-rhel8-x86_64
# cuda-cudart-dev-10-1.x86_64                10.1.243-1        cuda-rhel8-x86_64
# cuda-cudart-dev-10-2.x86_64                10.2.89-1         cuda-rhel8-x86_64
# cuda-cudart-devel-11-0.x86_64              11.0.194-1        cuda-rhel8-x86_64
# cuda-cufft-10-1.x86_64                     10.1.243-1        cuda-rhel8-x86_64
# cuda-cufft-10-2.x86_64                     10.2.89-1         cuda-rhel8-x86_64
# cuda-cufft-dev-10-1.x86_64                 10.1.243-1        cuda-rhel8-x86_64
# cuda-cufft-dev-10-2.x86_64                 10.2.89-1         cuda-rhel8-x86_64
# cuda-cuobjdump-10-1.x86_64                 10.1.243-1        cuda-rhel8-x86_64
# cuda-cuobjdump-10-2.x86_64                 10.2.89-1         cuda-rhel8-x86_64
# cuda-cuobjdump-11-0.x86_64                 11.0.194-1        cuda-rhel8-x86_64
# cuda-cupti-10-1.x86_64                     10.1.243-1        cuda-rhel8-x86_64
# cuda-cupti-10-2.x86_64                     10.2.89-1         cuda-rhel8-x86_64
# cuda-cupti-11-0.x86_64                     11.0.194-1        cuda-rhel8-x86_64
# cuda-curand-10-1.x86_64                    10.1.243-1        cuda-rhel8-x86_64
# cuda-curand-10-2.x86_64                    10.2.89-1         cuda-rhel8-x86_64
# cuda-curand-dev-10-1.x86_64                10.1.243-1        cuda-rhel8-x86_64
# cuda-curand-dev-10-2.x86_64                10.2.89-1         cuda-rhel8-x86_64
# cuda-cusolver-10-1.x86_64                  10.1.243-1        cuda-rhel8-x86_64
# cuda-cusolver-10-2.x86_64                  10.2.89-1         cuda-rhel8-x86_64
# cuda-cusolver-dev-10-1.x86_64              10.1.243-1        cuda-rhel8-x86_64
# cuda-cusolver-dev-10-2.x86_64              10.2.89-1         cuda-rhel8-x86_64
# cuda-cusparse-10-1.x86_64                  10.1.243-1        cuda-rhel8-x86_64
# cuda-cusparse-10-2.x86_64                  10.2.89-1         cuda-rhel8-x86_64
# cuda-cusparse-dev-10-1.x86_64              10.1.243-1        cuda-rhel8-x86_64
# cuda-cusparse-dev-10-2.x86_64              10.2.89-1         cuda-rhel8-x86_64
# cuda-demo-suite-10-1.x86_64                10.1.243-1        cuda-rhel8-x86_64
# cuda-demo-suite-10-2.x86_64                10.2.89-1         cuda-rhel8-x86_64
# cuda-demo-suite-11-0.x86_64                11.0.167-1        cuda-rhel8-x86_64
# cuda-documentation-10-1.x86_64             10.1.243-1        cuda-rhel8-x86_64
# cuda-documentation-10-2.x86_64             10.2.89-1         cuda-rhel8-x86_64
# cuda-documentation-11-0.x86_64             11.0.207-1        cuda-rhel8-x86_64
# cuda-driver-dev-10-1.x86_64                10.1.243-1        cuda-rhel8-x86_64
# cuda-driver-dev-10-2.x86_64                10.2.89-1         cuda-rhel8-x86_64
# cuda-driver-devel-11-0.x86_64              11.0.194-1        cuda-rhel8-x86_64
# cuda-drivers.x86_64                        450.51.06-1       cuda-rhel8-x86_64
# cuda-drivers-fabricmanager.x86_64          450.51.06-1       cuda-rhel8-x86_64
# cuda-drivers-fabricmanager-450.x86_64      450.51.06-1       cuda-rhel8-x86_64
# cuda-gdb-10-1.x86_64                       10.1.243-1        cuda-rhel8-x86_64
# cuda-gdb-10-2.x86_64                       10.2.89-1         cuda-rhel8-x86_64
# cuda-gdb-11-0.x86_64                       11.0.194-1        cuda-rhel8-x86_64
# cuda-gdb-src-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-gdb-src-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-gdb-src-11-0.x86_64                   11.0.194-1        cuda-rhel8-x86_64
# cuda-gpu-library-advisor-10-1.x86_64       10.1.243-1        cuda-rhel8-x86_64
# cuda-libraries-10-1.x86_64                 10.1.243-1        cuda-rhel8-x86_64
# cuda-libraries-10-2.x86_64                 10.2.89-1         cuda-rhel8-x86_64
# cuda-libraries-11-0.x86_64                 11.0.2-1          cuda-rhel8-x86_64
# cuda-libraries-dev-10-1.x86_64             10.1.243-1        cuda-rhel8-x86_64
# cuda-libraries-dev-10-2.x86_64             10.2.89-1         cuda-rhel8-x86_64
# cuda-libraries-devel-11-0.x86_64           11.0.2-1          cuda-rhel8-x86_64
# cuda-license-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-license-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-memcheck-10-1.x86_64                  10.1.243-1        cuda-rhel8-x86_64
# cuda-memcheck-10-2.x86_64                  10.2.89-1         cuda-rhel8-x86_64
# cuda-memcheck-11-0.x86_64                  11.0.194-1        cuda-rhel8-x86_64
# cuda-minimal-build-10-1.x86_64             10.1.243-1        cuda-rhel8-x86_64
# cuda-minimal-build-10-2.x86_64             10.2.89-1         cuda-rhel8-x86_64
# cuda-minimal-build-11-0.x86_64             11.0.2-1          cuda-rhel8-x86_64
# cuda-misc-headers-10-1.x86_64              10.1.243-1        cuda-rhel8-x86_64
# cuda-misc-headers-10-2.x86_64              10.2.89-1         cuda-rhel8-x86_64
# cuda-npp-10-1.x86_64                       10.1.243-1        cuda-rhel8-x86_64
# cuda-npp-10-2.x86_64                       10.2.89-1         cuda-rhel8-x86_64
# cuda-npp-dev-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-npp-dev-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-nsight-10-1.x86_64                    10.1.243-1        cuda-rhel8-x86_64
# cuda-nsight-10-2.x86_64                    10.2.89-1         cuda-rhel8-x86_64
# cuda-nsight-11-0.x86_64                    11.0.194-1        cuda-rhel8-x86_64
# cuda-nsight-compute-10-1.x86_64            10.1.243-1        cuda-rhel8-x86_64
# cuda-nsight-compute-10-2.x86_64            10.2.89-1         cuda-rhel8-x86_64
# cuda-nsight-compute-11-0.x86_64            11.0.2-1          cuda-rhel8-x86_64
# cuda-nsight-systems-10-1.x86_64            10.1.243-1        cuda-rhel8-x86_64
# cuda-nsight-systems-10-2.x86_64            10.2.89-1         cuda-rhel8-x86_64
# cuda-nsight-systems-11-0.x86_64            11.0.2-1          cuda-rhel8-x86_64
# cuda-nvcc-10-1.x86_64                      10.1.243-1        cuda-rhel8-x86_64
# cuda-nvcc-10-2.x86_64                      10.2.89-1         cuda-rhel8-x86_64
# cuda-nvcc-11-0.x86_64                      11.0.194-1        cuda-rhel8-x86_64
# cuda-nvdisasm-10-1.x86_64                  10.1.243-1        cuda-rhel8-x86_64
# cuda-nvdisasm-10-2.x86_64                  10.2.89-1         cuda-rhel8-x86_64
# cuda-nvdisasm-11-0.x86_64                  11.0.194-1        cuda-rhel8-x86_64
# cuda-nvgraph-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-nvgraph-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-nvgraph-dev-10-1.x86_64               10.1.243-1        cuda-rhel8-x86_64
# cuda-nvgraph-dev-10-2.x86_64               10.2.89-1         cuda-rhel8-x86_64
# cuda-nvjpeg-10-1.x86_64                    10.1.243-1        cuda-rhel8-x86_64
# cuda-nvjpeg-10-2.x86_64                    10.2.89-1         cuda-rhel8-x86_64
# cuda-nvjpeg-dev-10-1.x86_64                10.1.243-1        cuda-rhel8-x86_64
# cuda-nvjpeg-dev-10-2.x86_64                10.2.89-1         cuda-rhel8-x86_64
# cuda-nvml-dev-10-1.x86_64                  10.1.243-1        cuda-rhel8-x86_64
# cuda-nvml-dev-10-2.x86_64                  10.2.89-1         cuda-rhel8-x86_64
# cuda-nvml-devel-11-0.x86_64                11.0.167-1        cuda-rhel8-x86_64
# cuda-nvprof-10-1.x86_64                    10.1.243-1        cuda-rhel8-x86_64
# cuda-nvprof-10-2.x86_64                    10.2.89-1         cuda-rhel8-x86_64
# cuda-nvprof-11-0.x86_64                    11.0.194-1        cuda-rhel8-x86_64
# cuda-nvprune-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-nvprune-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-nvprune-11-0.x86_64                   11.0.167-1        cuda-rhel8-x86_64
# cuda-nvrtc-10-1.x86_64                     10.1.243-1        cuda-rhel8-x86_64
# cuda-nvrtc-10-2.x86_64                     10.2.89-1         cuda-rhel8-x86_64
# cuda-nvrtc-11-0.x86_64                     11.0.194-1        cuda-rhel8-x86_64
# cuda-nvrtc-dev-10-1.x86_64                 10.1.243-1        cuda-rhel8-x86_64
# cuda-nvrtc-dev-10-2.x86_64                 10.2.89-1         cuda-rhel8-x86_64
# cuda-nvrtc-devel-11-0.x86_64               11.0.194-1        cuda-rhel8-x86_64
# cuda-nvtx-10-1.x86_64                      10.1.243-1        cuda-rhel8-x86_64
# cuda-nvtx-10-2.x86_64                      10.2.89-1         cuda-rhel8-x86_64
# cuda-nvtx-11-0.x86_64                      11.0.167-1        cuda-rhel8-x86_64
# cuda-nvvp-10-1.x86_64                      10.1.243-1        cuda-rhel8-x86_64
# cuda-nvvp-10-2.x86_64                      10.2.89-1         cuda-rhel8-x86_64
# cuda-nvvp-11-0.x86_64                      11.0.194-1        cuda-rhel8-x86_64
# cuda-repo-rhel8.x86_64                     10.2.89-1         cuda-rhel8-x86_64
# cuda-runtime-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-runtime-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-runtime-11-0.x86_64                   11.0.2-1          cuda-rhel8-x86_64
# cuda-samples-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-samples-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-samples-11-0.x86_64                   11.0.194-1        cuda-rhel8-x86_64
# cuda-sanitizer-11-0.x86_64                 11.0.194-1        cuda-rhel8-x86_64
# cuda-sanitizer-api-10-1.x86_64             10.1.243-1        cuda-rhel8-x86_64
# cuda-sanitizer-api-10-2.x86_64             10.2.89-1         cuda-rhel8-x86_64
# cuda-toolkit-10-1.x86_64                   10.1.243-1        cuda-rhel8-x86_64
# cuda-toolkit-10-2.x86_64                   10.2.89-1         cuda-rhel8-x86_64
# cuda-toolkit-11-0.x86_64                   11.0.2-1          cuda-rhel8-x86_64
# cuda-tools-10-1.x86_64                     10.1.243-1        cuda-rhel8-x86_64
# cuda-tools-10-2.x86_64                     10.2.89-1         cuda-rhel8-x86_64
# cuda-tools-11-0.x86_64                     11.0.2-1          cuda-rhel8-x86_64
# cuda-visual-tools-10-1.x86_64              10.1.243-1        cuda-rhel8-x86_64
# cuda-visual-tools-10-2.x86_64              10.2.89-1         cuda-rhel8-x86_64
# cuda-visual-tools-11-0.x86_64              11.0.2-1          cuda-rhel8-x86_64
# nvidia-driver-cuda.x86_64                  3:450.51.06-1.el8 cuda-rhel8-x86_64
# nvidia-driver-cuda-libs.x86_64             3:450.51.06-1.el8 cuda-rhel8-x86_64
# xorg-x11-drv-nvidia-390xx-cuda-libs.i686   3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-390xx-cuda-libs.x86_64 3:390.138-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-cuda-libs.i686         3:440.100-1.fc32  rpmfusion-nonfree-updates
# xorg-x11-drv-nvidia-cuda-libs.x86_64       3:440.100-1.fc32  rpmfusion-nonfree-updates

#/*
#===============================================================================≈
#† LUXCIUM LICENSE *NO* PERMISSION GRANTED - PROVIDED "AS IS" - WITHOUT WARRANTY

#&  *NO* PERMISSION ARE GRANTED. NOT TO PUBLISH, NOT TO DISTRIBUTE, NOT TO
#&  SUBLICENSE, AND/OR NOT TO SELL COPIES OF THE SOFTWARE.
#&  YOU MAY USE IT ONLY FOR YOURSELF AND YOU HAVE THE RIGHT TO: DISTRIBUTE TO
#&  YOUR FRIENDS, TO YOUR STUDENTS, OR TO YOU COWORKER FOR PERSONAL USE AT HOME
#&  AT SCHOOL OR AT WORK.

#† Copyright © 2020 - LUXCIUM† (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>

#- --> NOTICE
#-  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
#-  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#-  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#-  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR OTHER
#-  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#-  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#-  SOFTWARE.
#- -->
## IN ANY CASES THE COPYRIGHT AND NOTICE ABOVE MUST BE INCLUDED.

#† Scientia es lux principium✨ ™
#===============================================================================≈
#- */
