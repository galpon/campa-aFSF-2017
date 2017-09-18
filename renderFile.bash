#!/usr/bin/env bash

# config
OUT="out"
F="src/campanhaFSF-2017.svg"
RENDERNAME="FSF"

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


# 2_ES => layer4
# 2_GL => layer8
# 3_ES => layer5
# 3_GL => layer9

# 1_ES => rect5473
FI="$RENDERNAME-Texto1-ES"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5148" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5473" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"

# 1_GL => rect5562
FI="$RENDERNAME-Texto1-GL"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5148" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5562" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"

# 2_ES => rect5818
FI="$RENDERNAME-Texto2-ES"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5148" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5818" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"

# 2_GL => rect5870
FI="$RENDERNAME-Texto2-GL"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5148" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5870" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"


# 3_ES => rect5910
FI="$RENDERNAME-Texto3-ES"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5148" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5910" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"

# 3_GL => rect5949
FI="$RENDERNAME-Texto3-GL"
cp "$DIR/$F" "$DIR/tmp/$FI.svg"
inkscape  -f "$DIR/tmp/$FI.svg" \
 --select="rect5951" --verb="LayerHideAll" --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5148" \
 --verb="LayerToggleHide" \
 --verb="EditDeselect" \
 --select="rect5949" \
 --verb="LayerToggleHide" \
 --verb=FileSave \
 --verb=FileQuit
inkscape  -z -f "$DIR/tmp/$FI.svg" -e "$DIR/$OUT/$DATE/$FI.png" -C
rm "$DIR/tmp/$FI.svg"

