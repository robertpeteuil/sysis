# SYSIS - the Lightweight System-Information Utility

## Quickly Display System Information for Varied Host Types

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/462b017e8f6b407d9783b1181b9ab869)](https://www.codacy.com/app/robertpeteuil/sysis?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=robertpeteuil/sysis&amp;utm_campaign=Badge_Grade)
[![GitHub release](https://img.shields.io/github/release/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis/blob/master/CHANGELOG.md)
[![lang](https://img.shields.io/badge/language-bash-89e051.svg?style=flat-square)](https://github.com/robertpeteuil/sysis)
[![license](https://img.shields.io/github/license/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)

---

**SYSIS provides a simple way to retrieve and display system information across multiple system types, by eliminating the need to use multiple OS specific commands.**  It is especially useful for sys-admins, developers and IT Professionals who maintain  simultaneous connections to multiple hosts, as it allows rapid retrieval of system info for any host.

Designed for maximum productivity:

- Simple to use and requires no parameters
- Executes quickly by focusing on most commonly needed information
- Includes Network Connection Details - Adapter Name, IPv4 Address, IPv6 Address, and MAC Address
  - Details about Network Info are described in the [CHANGELOG](https://github.com/robertpeteuil/sysis/blob/master/CHANGELOG.md)

### macOS with 2 NICs: "en1" with IPv4 & IPv6, "en2" with IPv4

![macOS](https://user-images.githubusercontent.com/1554603/34471519-22988876-ef09-11e7-8ac8-ea45959e7691.png)

### Ubuntu with 1 NIC: "enp0s10" with IPv4 & IPv6

![Ubuntu](https://user-images.githubusercontent.com/1554603/34471525-329da544-ef09-11e7-9a46-b9836302b422.png)

### Supported Platforms

- Linux
- macOS (OS X)
- Windows 10 Linux Shells
- Embedded Devices running Linux

### Installation

Sysis can be installed multiple ways:

- Download and run installer
- Clone the repo and run installer
- Manual download

#### Download and run installer

- Download the installation script
- Verify the contents of the script you downloaded matches the contents of install.sh
- Run the installation script
- The installation script downloads the latest release and installs it in the path.

``` shell
curl -LO https://raw.github.com/robertpeteuil/sysis/master/install.sh
bash install.sh
```

#### Clone the repo and run installer

- clone the repo, optionally specifying `--depth=1` to make the download fast and use less disk space
- cd into the repo directory
- run the installation script
- The script will detects that it's running locally and use the downloaded copy of `sysis`, instead of downloading it

``` shell
git clone https://github.com/robertpeteuil/sysis.git --depth=1
cd sysis
./install.sh
```

#### Manual download

- This method downloads the latest commit on master, whereas the installation script downloads the latest release.

``` shell
curl -s -L https://raw.github.com/robertpeteuil/sysis/master/sysis > sysis; chmod +x sysis
```

### Hosted Script Execution and Security

For the purpose of this utility, there are two scenarios where executing a script directly from GitHub is desirable:

- executing the installation script
  - this makes for an extremely simple, one-step install
- executing `sysis` without installation
  - this is enables use of the utility on hosts where installation is not possible

In general, executing hosted scripts is not secure because the scripts are executed without a chance to inspect them. Fortunately, the security risks can be mitigated by performing actions specific to each scenario.

**Preparations for Using Hosted Installation Script**
This is the easier of the two scenarios to address because you will only run the installer once and don't need to consider future changes.

- review the [installer](https://github.com/robertpeteuil/sysis/blob/master/install.sh) and ensure its safe and meets your security standards
- After review, the hosted installation script can be executed with the command below.
  - This is the equivalent of the first installation option, but performed in one step.

The online-installation command:

``` shell
bash -c "`curl -s -L https://raw.github.com/robertpeteuil/sysis/master/install.sh`"
```

**Preparations for Using Hosted `sysis` Script**

- Review the [sysis script](https://github.com/robertpeteuil/sysis/blob/master/sysis) and ensure its safe and meets your security standards
- Create a fork of this repo in your GitHub account
  - This provides an isolated copy that you control and allows you to review all future commits before [syncing them to your fork](https://help.github.com/articles/syncing-a-fork/).
  - In your fork, edit `install.sh` and change the value assigned to `REPOACCT` to your username.  (This ensures that running the installer in your fork will look for releases in your fork.)
  - Change the username in the command below so the script runs from your fork.
- For ease of use, you will likely want to create an alias or terminal macro to execute the command:

``` shell
bash -c "`curl -s -L https://raw.github.com/robertpeteuil/sysis/master/sysis`"
# remember to change 'robertpeteuil' to your account name if you've created a fork
```

### Usage and Options

``` shell
USAGE: sysis [OPTIONS]

 OPTIONS:
     -c  : compressed output (no separation lines)
     -d  : debug only report
     -n  : network only report
     -h  : help
     -V  : version info
 --help  : detailed help
```

### Project History

**SYSIS**, an acronym for "SYStem IS", was originally written in 2014 and released as open-source in 2017. It's actively maintained and enhancements are continually added.
