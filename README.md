# WSL-CentOS8

Download CentOS 8.4 container image and recompression for using to Windows.

This shell script has been tested on CentOS8.

### How to use shell script

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

wsl --import `DIST_NAME` `INSTALL_PATH` `PATH_FOR_centos.tar`

```shell
> wsl --import CentOS8 c:\wsl\centos8 .\Downloads\centos8.tar
```





#### Memo for "centos8.zip"

This file has based on The CentOS Project.

CentOS 8 Linux EULA is [here](https://git.centos.org/rpms/centos-release/blob/c8/f/SOURCES/EULA).

CentOS 8 Linux License is [here](https://git.centos.org/rpms/centos-release/blob/c8/f/SOURCES/GPL).

Other package license files exist under `/usr/share/licenses`. Source code is [here](https://vauld.centos.org/centos/8.4.2105/).



[Docker Containers for Legal Professionals - The Linux Foundation](https://linuxfoundation.jp/publications/2020/04/docker-containers-for-legal-professionals/)

