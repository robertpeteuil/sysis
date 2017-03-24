#!/bin/bash

REPOACCT="robertpeteuil"
REPONAME="sysis"
# DEBUG=true

CURRENTDIR="$(pwd)"
CURRENTDIR=${CURRENTDIR##*\/}    # remove leading dirs

# UTILTMPDIR="${REPOACCT}-${REPONAME}*"
UTILTMPDIR="${REPOACCT}-${REPONAME}"

if [[ ("${CURRENTDIR}" =~ "${UTILTMPDIR}"*) || (("${CURRENTDIR}" =~ "${REPONAME}"*)) ]]; then
  [[ "$DEBUG" ]] && echo "we're in a dir named for the repo"
  # assume the repo is downloaded and were doing a local install
else
  [[ "$DEBUG" ]] && echo "not in repo dir"
  # not in repo directory (it needs to be DL'd)

  # switch to temp dir
  TMPDIR=${TMPDIR:-/tmp}
  [[ "$DEBUG" ]] && echo -e "\tswitching to temp dir: ${TMPDIR}"
  cd "${TMPDIR}" || exit 1

  # find latest repo package, download and un-tar it
  PKGDLURL=$(curl -s https://api.github.com/repos/${REPOACCT}/${REPONAME}/releases/latest | grep tarball_url | head -n 1 | cut -d '"' -f 4)
  [[ "$DEBUG" ]] && echo -e "\tdownloading repo: ${PKGDLURL}"
  curl -sL "$PKGDLURL" | tar zxf -

  [[ "$DEBUG" ]] && echo -e "\tcalculating extraction dir name"
  # find the name of the dir extracted to, as it has the last commit # as a suffix
  UTILTMPDIR=$(ls -d -t ${REPOACCT}-${REPONAME}* | head -n 1)
  UTILTMPDIR=${UTILTMPDIR/%\//}

  [[ "$DEBUG" ]] && echo -e "\tchanging to extraction dir: ${UTILTMPDIR}"
  # cd repo dir
  cd "${UTILTMPDIR}" || exit 1

  CLEANUPREQ=true

fi

# install code
[[ "$DEBUG" ]] && echo -e "Installer"
if [[ -w "/usr/local/bin" ]]; then
  [[ "$DEBUG" ]] && echo -e "\t/usr/local/bin writeable - installing there"
  BINDIR="/usr/local/bin"
  CMDPREFIX=""
  STREAMLINED=true
else
  [[ "$DEBUG" ]] && echo -e "\t/usr/local/bin not writeable by current user\n\n"
  echo -e "installer - ${REPONAME} utility\n"
  echo "Specify install directory (a,b or c):"
  echo -en "\t(a) '~/bin'    (b) '/usr/local/bin' as root    (c) abort : "
  read -r -n 1 SELECTION
  echo

  if [ "${SELECTION}" == "a" ] || [ "${SELECTION}" == "A" ]; then
    [[ "$DEBUG" ]] && echo "Option A selected: installing into ${HOME}/bin"
    BINDIR="${HOME}/bin"
    CMDPREFIX=""
  elif [ "${SELECTION}" == "b" ] || [ "${SELECTION}" == "B" ]; then
    [[ "$DEBUG" ]] && echo "Option B selected: installing into '/usr/local/bin' as root"
    BINDIR="/usr/local/bin"
    CMDPREFIX="sudo "
  else
    [[ "$DEBUG" ]] && echo "Aborting"
    exit 0
  fi

fi

# Install
mkdir -p "${BINDIR}"
${CMDPREFIX} cp -f sysis "${BINDIR}"

# cleanup
if [[ "${CLEANUPREQ}" ]]; then
  [[ "$DEBUG" ]] && echo -e "\tcleaning up"
  cd "${TMPDIR}" || exit 1
  rm -rf "${UTILTMPDIR}"
fi

[[ ! "$STREAMLINED" ]] && echo
echo "sysis utility installed to ${BINDIR}"
