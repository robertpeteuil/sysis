# SYSIS - the Lightweight System-Information Utility
### Display Key System Information with this Cross-Platform Utility right from the shell
[![Code Climate](https://codeclimate.com/github/robertpeteuil/sysis/badges/gpa.svg)](https://codeclimate.com/github/robertpeteuil/sysis)
[![GitHub issues](https://img.shields.io/github/issues/robertpeteuil/sysis.svg)](https://github.com/robertpeteuil/sysis)
[![GitHub release](https://img.shields.io/github/release/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)
[![lang](https://img.shields.io/badge/language-bash-89e051.svg?style=flat-square)]()
[![license](https://img.shields.io/github/license/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)

---

**SYSIS is ideal for sysadmins, developers and IT Professionals who connect to dozens of systems daily and need to quickly determine key system information.**  SYSIS displays concise and organized information for the Host, OS and System HW.  It allows the user to obtain this quickly without the need to run multiple device-specific commands and utilities.  

It was designed with the busy professional in mind:
- Simple to use and doesnt require paramters
- Executes quickly by gathering only the most commonly needed information   

### sysis output on macOS and RasberryPi: 
![](https://cloud.githubusercontent.com/assets/1554603/24470009/4a5fde4e-1472-11e7-951a-4d5a4cec09b7.png)
![](https://cloud.githubusercontent.com/assets/1554603/24471945/c3793d9c-1478-11e7-89cd-c96404695a8d.png)

### Supported Platforms

  - Linux
  - macOS (OS X)
  - Raspberry PI (Linux)
  - Windows 10 with "Bash on Windows"  
    
### Execution

This is a command is executed simply by typing `sysis`

> Optional parameters:
> -  `-h` - 'help'
> -  `-n` - 'network only mode'
> -  `-d` - 'debug' - displays values by method obtained
> -  `-V` - 'version info'
> -  `--help` - 'detailed help info' - displays additional help including exit status information

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
