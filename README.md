# SYSIS - the Lightweight System-Information Utility
### Quickly Display System Information for Varied Host Types
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/462b017e8f6b407d9783b1181b9ab869)](https://www.codacy.com/app/robertpeteuil/sysis?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=robertpeteuil/sysis&amp;utm_campaign=Badge_Grade)
[![GitHub issues](https://img.shields.io/github/issues/robertpeteuil/sysis.svg)](https://github.com/robertpeteuil/sysis)
[![GitHub release](https://img.shields.io/github/release/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)
[![lang](https://img.shields.io/badge/language-bash-89e051.svg?style=flat-square)](https://github.com/robertpeteuil/sysis)
[![license](https://img.shields.io/github/license/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)

---

**SYSIS is ideal for sys-admins, developers and IT Professionals who connect to dozens of systems daily and need to quickly display information for the current host.**  It displays concise info for the Host, OS and System HW without the need to run host-specific commands.  

It was designed with the busy professional in mind:
- Simple to use (no parameters required)
- Executes quickly by gathering only commonly needed information
   

### sysis output on Multiple Operating Systems:
![](https://cloud.githubusercontent.com/assets/1554603/25049131/09673d58-20f5-11e7-85dc-c330e96351b4.png)
![](https://cloud.githubusercontent.com/assets/1554603/25049136/11bb20aa-20f5-11e7-94e4-8c8580fbbe5e.png)

### Supported Platforms:

  - Linux
  - macOS (OS X)
  - Windows 10 'Bash on Windows'  
  - Embedded Devices running Linux

### Installation:

Easily installed with `curl` using this command:

```
bash -c "`curl -s -L https://raw.github.com/robertpeteuil/sysis/master/install.sh`"
```


Alternatively, the repo can be downloaded and installed locally.  If downloaded (or cloned), `cd` into the directory and run `./install.sh`

```
cd sysis
./install.sh
```

### Usage and Options:

```
USAGE: sysis [OPTIONS]

 OPTIONS:
     -d	: debug only report
     -n	: network only report
     -h	: help
     -V	: version info
 --help	: detailed help
```


