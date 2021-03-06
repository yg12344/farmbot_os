#!/bin/bash
SYSTEM=$1
VERSION=$2
PRIV_KEY_PATH=$3
REL_DIR=release-$VERSION
FIRM_FILE_REL=$REL_DIR/farmbot-$SYSTEM-$VERSION.fw
SIGNED_FIRM_FILE_REL=$REL_DIR/farmbot-$SYSTEM-$VERSION-signed.fw

MIX_ENV=prod MIX_TARGET=$SYSTEM mix firmware.sign $PRIV_KEY_PATH $SIGNED_FIRM_FILE_REL

# echo "Removing unsigned files!"
# rm $FIRM_FILE_REL
