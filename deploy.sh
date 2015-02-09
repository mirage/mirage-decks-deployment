#!/bin/sh -ex

UNIKERNEL=mir-decks

KERNEL=`pwd`/xen/`cat xen/latest`
sed -e "s,@KERNEL@,$KERNEL/${UNIKERNEL}.xen,g" < xl.conf.in > $KERNEL/xl.conf

cd $KERNEL
rm -f ${UNIKERNEL}.xen
bunzip2 -k ${UNIKERNEL}.xen.bz2

sudo xl destroy ${UNIKERNEL} || true
sudo xl create xl.conf
