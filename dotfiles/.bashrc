##############################################
#.bashrc
# Author: Aviraj Saha
###############################################

echo "$USER IN $SHELL SHELL"


OSTYPE=`uname`


PAGER=less
export PAGER

EDITOR=vim
export EDITOR

CVS_RSH=ssh
export CVS_RSH

CVSROOT=cvs.juniper.net:/cvs/juniper
export CVSROOT

export SYSTEST_CVSROOT=cvs-bn.juniper.net:/cvs/juniper-systest
#cvs -d cvs-bn.juniper.net:/cvs/juniper-systest co system-test/testscripts/Opus
#Old filer location
#MYROOT=/volume/nfstbuild11/asaha

MYROOT=/volume/nfsbuild009/asaha
SB_BASE=/volume/nfsbuild009/asaha/sb
export MYROOT
export SB_BASE


PATH=/volume/ssd-tools/bin/:$PATH
PATH=/usr/local/share:/usr/local/bin:/usr/local/sbin:$PATH
PATH=~/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:$PATH
PATH=/volume/buildtools/bin:/volume/labtools/bin:$PATH
#PATH=$PATH:/volume/perl/bin

#export TE_TOPOLOGY=wxjsnow-tb

#export PARAMS_MACHINES=bsd-wxjs:srx55:srx56:lnx-serv-js:lnx-clnt-js


case $OSTYPE in
    FreeBSD)
	PATH=$PATH:/volume/buildtools/bin
	;;
    *)
	;;
esac

## ------------------------------
## -- 1) User-customized code  --
## ------------------------------

## Define any user-specific variables you want here.
source ~/.bashrc_custom
## Define any juniper-specific variables you want here.
source ~/.bashrc_juniper_custom

