# sysis

### cross-platform command-line script to gather and display key system information

  **Ideal for sysadmins, developers and system builders who interact with multiple systems.**  It provides a quick method to display key system information without the need to run several different commands

  **sysis** is designed to only display key information needed frequently, without the need to memorize and specify extra parameters.   

#### Information Displayed

  * Hostname
  * LAN IP(s) Addresses
  * Internet IP(s) Addresses
  * OS, code-name & version  
  * Kernel & version
  * Device type & revision
  * Processor, revision, speed & number of cores
  * Memory usage, total & percentage used
  * Disk usage, total & percentage used

*Items displayed varies based upon OS type and current user privileges*

#### Platforms Supported

  * Linux
  * macOS / OS X
  * Windows 10 via Windows Subsystem for Linux (beta)
  * Raspberry PI (Linux)

#### Execution

  This is a command-line utility that is executed with `./sysis`

##### Optional Parameters

  * `-h` - 'help'
  * `-n` - 'network only mode'
  * `-d` - 'debug' - displays values by method obtained
  * `-V` - 'version info'
  * `--help` - 'detailed help info' - displays additional help including exit status information

#### To Do
* Revise Mac code to use 'macOS' instead of the now deprecated 'OS X'
* Update OS version information to include macOS (Sierra)
* Update Raspberry Pi hardware version information
