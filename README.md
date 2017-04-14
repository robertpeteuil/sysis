# SYSIS - the Lightweight System-Information Utility
### Display Key System Information with this Cross-Platform Utility right from the shell
[![Code Climate](https://codeclimate.com/github/robertpeteuil/sysis/badges/gpa.svg)](https://codeclimate.com/github/robertpeteuil/sysis)
[![GitHub issues](https://img.shields.io/github/issues/robertpeteuil/sysis.svg)](https://github.com/robertpeteuil/sysis)
[![GitHub release](https://img.shields.io/github/release/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)
[![lang](https://img.shields.io/badge/language-bash-89e051.svg?style=flat-square)]()
[![license](https://img.shields.io/github/license/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)

---

**SYSIS is ideal for sysadmins, developers and IT Professionals who connect to dozens of systems daily and need to quickly gather information about the current system.**  SYSIS displays concise info for the Host, OS and System HW without the need to run multiple commands and utilities.  

It was designed with the busy professional in mind:
- Simple to use and doesnt require paramters
- Executes quickly by gathering only commonly needed information   

### sysis output on macOS and RasberryPi: 
![](https://cloud.githubusercontent.com/assets/1554603/25049131/09673d58-20f5-11e7-85dc-c330e96351b4.png)
![](https://cloud.githubusercontent.com/assets/1554603/25049136/11bb20aa-20f5-11e7-94e4-8c8580fbbe5e.png)

### Supported Platforms:

  - Linux
  - macOS (OS X)
  - Windows 10 'Bash on Windows'  
  - Raspberry PI with HW reversion info (see screenshot)

    
### Execution:

The command is executed by typing `sysis`

```text
USAGE: sysis [OPTIONS]

 OPTIONS:
     -d	: debug only report
     -n	: network only report
     -h	: help
     -V	: version info
 --help	: detailed help
```

### Installation:

Can be install with curl

```shell
bash -c "`curl -s -L https://raw.github.com/robertpeteuil/sysis/master/install.sh`"
```


If the repo has been downloaded locally, cd into the directory and run install.sh

```shell
cd sysis
./install.sh
```
