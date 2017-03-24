# sysis
### Display Key System Information with this lightweight Cross-Platform Utility
[![Code Climate](https://codeclimate.com/github/robertpeteuil/sysis/badges/gpa.svg)](https://codeclimate.com/github/robertpeteuil/sysis)
[![GitHub issues](https://img.shields.io/github/issues/robertpeteuil/sysis.svg)](https://github.com/robertpeteuil/sysis)
[![GitHub release](https://img.shields.io/github/release/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)
[![language: bash](https://img.shields.io/badge/language-bash-447799.svg?colorB=2067b8&style=flat-square "made in Bash")]()
[![license](https://img.shields.io/github/license/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)

---

**Ideal for sysadmins, developers and system builders who connect to dozens of systems daily.**  SYSIS provides a quick display of key system information without the need to run multiple different utilities.  It also avoids the bloat that is common in other System Information Utilities.

### Screenshot of sysis output: 
![](https://cloud.githubusercontent.com/assets/1554603/24118108/e1456456-0d69-11e7-8501-2c3954b8b12d.png)

### Supported Platforms

  - Linux
  - macOS / OS X
  - Raspberry PI (Linux)
  - Windows 10 with "Bash on Linux" installed (supported in beta)
    
### Execution

This is a command is executed simply with `sysis`

> Optional parameters:
> -  `-h` - 'help'
> -  `-n` - 'network only mode'
> -  `-d` - 'debug' - displays values by method obtained
> -  `-V` - 'version info'
> -  `--help` - 'detailed help info' - displays additional help including exit status information

### Windows 10 - Bash on Windows - Pre-Installation Steps:

- Install **make** utility with the command `sudo apt install make`
- Allow write access to /usr/local/bin with the command `sudo chmod a+w /usr/local/bin`

### Installation:

Can be install with curl

```shell
bash -c "`curl -s -L https://raw.github.com/robertpeteuil/sysis/master/install.sh`"
```


Alternatively, if the repo has been downloaded locally it can be installed with make

```shell
cd sysis
make install
```
