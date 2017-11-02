# SYSIS - the Lightweight System-Information Utility
### Quickly Display System Information for Varied Host Types
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/462b017e8f6b407d9783b1181b9ab869)](https://www.codacy.com/app/robertpeteuil/sysis?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=robertpeteuil/sysis&amp;utm_campaign=Badge_Grade)
[![GitHub release](https://img.shields.io/github/release/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)
[![lang](https://img.shields.io/badge/language-bash-89e051.svg?style=flat-square)](https://github.com/robertpeteuil/sysis)
[![license](https://img.shields.io/github/license/robertpeteuil/sysis.svg?colorB=2067b8)](https://github.com/robertpeteuil/sysis)

---

**SYSIS provides a simple way to retrieve and display system information across multiple system types, by eliminating the need to use multiple commands that vary based on system-type.**  It is especially useful for sys-admins, developers and IT Professionals that frequently connect to multiple systems and require immediate knowledge of the current hosts info.

It was designed for maximum productivity:
- Simple to use - it requires no parameters to use
- Executes quickly by gathering only commonly needed information
   

### Example sysis output on Mac and Ubuntu:
![](https://user-images.githubusercontent.com/1554603/31736305-348e9408-b3f9-11e7-9c38-32a924d45505.png) ![](https://user-images.githubusercontent.com/1554603/31737773-5f2648e2-b3fd-11e7-970f-d5ec5cf66c1a.jpg)

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

### Project History:

**SYSIS** is an acronym for "SYStem IS" and was originally written in 2015.  It was open-sourced in early 2017, and is actively maintained.
