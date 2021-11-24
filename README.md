# WSL-CentOS8

Download CentOS 8.4 container image and recompression for using to Windows.

This shell script has been tested on CentOS8.

### How to use this script

```shell
git clone https://github.com/tmya/WSL-CentOS8.git
cd WSL-CentOS8
chmod +x ./create-centos8-zip.sh
./create-centos8-zip.sh
```

Execute the command to start file download and deployment.

You can find centos8.zip and work directory. Please remove "work" directory.

```shell
$ ls
LICENSE  README.md  centos8.zip  create-centos8-zip.sh  work
```

Transfer centos8.zip file to Windows10 in some way. Unzip it to get centos8.tar then import for WSL.

wsl --import `DIST_NAME` `INSTALL_PATH` `PATH_of_centos8.tar`

```shell
> wsl --import CentOS8 c:\wsl\centos8 .\Downloads\centos8.tar
```
**NOTE:** Create folder of INSTALL_PATH before wsl import.

### For beginners

#### Download centos8.zip

Download centos8.zip from [releases page](https://github.com/tmya/WSL-CentOS8/releases/tag/v0.0.1-8.4.2105).

#### Unzip centos8.zip

Unzip centos8.zip you will find centos8.tar.

#### Import centos8.tar for WSL.

wsl --import `DEST_NAME` `INSTALL_PATH` `PATH_OF_centos8.tar`

```shell
> mkdir c:\wsl\centos8
> wsl --import CentOS8 c:\wsl\centos8 .\Downloads\centos8.tar 
```

#### Execute CentOS8

wsl -d `DEST_NAME`

```shell
> wsl -d CentOS8
```

### Memo for "centos8.zip"

This file has based on The CentOS Project.

CentOS 8 Linux EULA is [here](https://git.centos.org/rpms/centos-release/blob/c8/f/SOURCES/EULA).

CentOS 8 Linux License is [here](https://git.centos.org/rpms/centos-release/blob/c8/f/SOURCES/GPL).

Other package license files exist under `/usr/share/licenses`. Source code is [here](https://vault.centos.org/centos/8.4.2105/).



[Docker Containers for Legal Professionals - The Linux Foundation](https://linuxfoundation.jp/publications/2020/04/docker-containers-for-legal-professionals/)

