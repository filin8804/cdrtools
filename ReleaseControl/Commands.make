##
# Standard Commands
#
# Wilfredo Sanchez | wsanchez@apple.com
# Copyright (c) 1997-1999 Apple Computer, Inc.
#
# @APPLE_LICENSE_HEADER_START@
#
# Portions Copyright (c) 1999-2009 Apple Inc.  All Rights
# Reserved.  This file contains Original Code and/or Modifications of
# Original Code as defined in and that are subject to the Apple Public
# Source License Version 1.1 (the "License").  You may not use this file
# except in compliance with the License.  Please obtain a copy of the
# License at http://www.apple.com/publicsource and read it before using
# this file.
#
# The Original Code and all software distributed under the License are
# distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, EITHER
# EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
# INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE OR NON- INFRINGEMENT.  Please see the
# License for the specific language governing rights and limitations
# under the License.
#
# @APPLE_LICENSE_HEADER_END@
##

##
# Make sure that we're using sh
##
SHELL=/bin/sh

##
# Archiving Commands
##
COMPRESS   = /usr/bin/compress
GUNZIP     = /usr/bin/gzip -d
GZCAT      = /usr/bin/gzip -d -c
GZIP       = /usr/bin/gzip -9
PAX        = /bin/pax
TAR        = /usr/bin/tar
UNCOMPRESS = $(GUNZIP)
ZCAT       = $(GZCAT)

##
# File Commands
##
CHFLAGS           = /usr/bin/chflags
CHGRP             = /usr/bin/chgrp
CHMOD             = /bin/chmod
CHOWN             = /usr/sbin/chown
CP                = /bin/cp -pfR
DU		  = /usr/bin/du
INSTALL           = /usr/bin/install
INSTALL_DIRECTORY = $(INSTALL) -m $(Install_Directory_Mode) -o $(Install_Directory_User) -g $(Install_Directory_Group) -d
INSTALL_DYLIB     = $(INSTALL) -m $(Install_Program_Mode)   -o $(Install_Program_User)   -g $(Install_Program_Group)   -S "-S"
INSTALL_FILE      = $(INSTALL) -m $(Install_File_Mode)      -o $(Install_File_User)      -g $(Install_File_Group)
INSTALL_LIBRARY   = $(INSTALL) -m $(Install_File_Mode)      -o $(Install_File_User)      -g $(Install_File_Group)      -S "-S"
INSTALL_PROGRAM   = $(INSTALL) -m $(Install_Program_Mode)   -o $(Install_Program_User)   -g $(Install_Program_Group)   -s
INSTALL_SCRIPT    = $(INSTALL) -m $(Install_Program_Mode)   -o $(Install_Program_User)   -g $(Install_Program_Group)
LN		  = /bin/ln
LS		  = /bin/ls
MKDIR             = /bin/mkdir -p -m $(Install_Directory_Mode)
MV		  = /bin/mv
RM                = /bin/rm -f
RMDIR             = /bin/rm -fr
TOUCH             = /usr/bin/touch

# If you're not root, you can't change file ownership
ifneq ($(USER),root)
INSTALL_DIRECTORY = $(INSTALL) -m $(Install_Directory_Mode) -d
INSTALL_FILE      = $(INSTALL) -m $(Install_File_Mode)
INSTALL_PROGRAM   = $(INSTALL) -m $(Install_Program_Mode)   -s
INSTALL_DYLIB     = $(INSTALL) -m $(Install_Program_Mode)   -S "-S"
INSTALL_LIBRARY   = $(INSTALL) -m $(Install_File_Mode)      -S "-S"
INSTALL_SCRIPT    = $(INSTALL) -m $(Install_Program_Mode)
endif

##
# Find Commands
##
FIND  = /usr/bin/find
XARGS = /usr/bin/xargs

##
# Installer
##
INSTALLER = /usr/bin/installer.sh
LSBOM     = /usr/bin/lsbom
MKBOM     = /usr/bin/mkbom
PACKAGE   = /usr/bin/package

##
# Miscellaneous
##
ARCH        = /usr/bin/arch
ECHO        = echo
FALSE       = /usr/bin/false
PLUTIL      = /usr/bin/plutil
PWD         = /bin/pwd
SLEEP       = /bin/sleep
SYSCTL      = /usr/sbin/sysctl
TEST        = /bin/test
TEXI2HTML   = /usr/bin/texi2html
TRUE        = /usr/bin/true
UNAME       = /usr/bin/uname
WHICH       = /usr/bin/which
WHOAMI      = /usr/bin/whoami
YES         = /usr/bin/yes

##
# Shells
##
SH  = /bin/sh
CSH = /bin/csh

##
# Text Commands
##
AWK      = /usr/bin/gawk
BASENAME = /usr/bin/basename
CAT      = /bin/cat
CMP      = /usr/bin/cmp
CUT      = /usr/bin/cut
DIRNAME  = /usr/bin/dirname
ED       = /bin/ed
EGREP    = /usr/bin/egrep
FGREP    = /usr/bin/fgrep
FMT      = /usr/bin/fmt
GREP     = /usr/bin/grep
HEAD     = /usr/bin/head
PATCH    = /usr/bin/patch
PERL     = /usr/bin/perl
PRINTF   = /usr/bin/printf
SED      = /usr/bin/sed
SORT     = /usr/bin/sort
TAIL     = /usr/bin/tail
TEE      = /usr/bin/tee
TSORT    = /usr/bin/tsort
WC       = /usr/bin/wc
