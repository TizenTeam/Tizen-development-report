#!/bin/bash

# Copyright (c) 2014 K�vin THIERRY <kevin.thierry@open.eurogiciel.org>

# See the file LICENSE for copying permission.

if [ "$#" -ne 1 ]
then
    echo
    echo "Copy the scripts in the given directory"
    echo
    echo "Usage: \"./install.sh <destination>\""
    echo
    exit -1
fi

BINDIR=$1

# Gerrit elated scripts (Gerrit querries)
install scripts/gerrit/* $BINDIR

# Git repo related scripts
install scripts/repo/* $BINDIR

# Global scripts
install scripts/main/* $BINDIR

exit 0
