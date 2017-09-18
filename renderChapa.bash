#!/usr/bin/env bash

# config
OUT="out"
F="src/Chapa.svg"
RENDERNAME="FSF-Chapa"

# config ends here

DATE=`date '+%Y-%m-%d_%H.%M.%S'`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


#clean
if [ -d "$DIR/tmp" ]; then
    rm -r "$DIR/tmp"
fi

# create tmp
if [ ! -d "$DIR/tmp" ]; then
    mkdir "$DIR/tmp"
fi

# create out if not existent
if [ ! -d "$DIR/$OUT" ]; then
    mkdir "$DIR/$OUT"
fi



# create out if not existent
if [ ! -d "$DIR/$OUT/$DATE" ]; then
    mkdir "$DIR/$OUT/$DATE"
fi



# inkscape actions /verbs
#LayerHideAll
#LayerToggleHide
# Deseelct --verb=EditDeselect.


# Fondo => layer2
# FondoBlanco => rect5951
# Diseno => rect5148


# 1_ES => rect103
FI="$RENDERNAME-ES"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5412" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect103" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"


# 1_GL => rect105
FI="$RENDERNAME-GL"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5412" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect105" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"


