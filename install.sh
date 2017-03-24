#!/bin/bash

REPOACCT="robertpeteuil"
REPONAME="sysis"
PREFIX="/usr/local"
BINDIR="${PREFIX}/bin"

# switch to temp dir
TMPDIR=${TMPDIR:-/tmp}
cd "${TMPDIR}" || exit 1

# find latest repo package, download and un-tar it
PKGDLURL=$(curl -s https://api.github.com/repos/${REPOACCT}/${REPONAME}/releases/latest | grep tarball_url | head -n 1 | cut -d '"' -f 4)
curl -sL "$PKGDLURL" | tar zxf -

# find the name of the dir extracted to, as it has the last commit # as a suffix
UTILTMPDIR=$(ls -d -t ${REPOACCT}-${REPONAME}* | head -n 1)
UTILTMPDIR=${UTILTMPDIR//\//}
cd "${UTILTMPDIR}" || exit 1

# install with make if installed, otherwise use scripts
if [[ $(make -h 2> /dev/null) ]]; then
  make install
else
  mkdir -p "${BINDIR}"
  cp -f sysis "${BINDIR}"
  echo "sysis utility installed to ${BINDIR}"
fi

# cleanup 
cd "${TMPDIR}" || exit 1
rm -rf "${UTILTMPDIR}"
