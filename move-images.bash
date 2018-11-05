#!/bin/bash

shopt -s nullglob

# Images and videos from Thomas Nokia 8
cd /share/unsere/Bilder/ThomasSync/

#if [ -f *.jpg ]; then
    # loop over images
    for FILE in *.jpg; do
        NAME=`echo "$FILE"|sed 's/ -.*//'`
        YEAR=`echo "$NAME"|cut -c5-8`
        MONTH=`echo "$NAME"|cut -c9-10`
        MONTH=`date -d $MONTH/01 +%B`
        YEARDIR="/share/unsere/Bilder/$YEAR/"
        MONTHDIR="/share/unsere/Bilder/$YEAR/$MONTH/"
        if [ ! -d "$YEARDIR" ]; then
            mkdir $YEARDIR
            chown thomas:everyone $YEARDIR
	    chmod 777 $YEARDIR
        fi
        if [ ! -d "$MONTHDIR" ]; then
            mkdir $MONTHDIR
            chown thomas:everyone $MONTHDIR
            chmod 777 $MONTHDIR
        fi

        mv "$FILE" "$MONTHDIR"
	echo "$MONTHDIR/$FILE"
    done
#fi

#if [ -f *.mp4 ]; then
    # loop over videos
    for FILE in *.mp4; do
        NAME=`echo "$FILE"|sed 's/ -.*//'`
        YEAR=`echo "$NAME"|cut -c5-8`
        MONTH=`echo "$NAME"|cut -c9-10`
        MONTH=`date -d $MONTH/01 +%B`
        YEARDIR="/share/unsere/Videos/$YEAR/"
        MONTHDIR="/share/unsere/Videos/$YEAR/$MONTH/"
        if [ ! -d "$YEARDIR" ]; then
            mkdir $YEARDIR
            chown thomas:everyone $YEARDIR
            chmod 777 $YEARDIR
        fi
        if [ ! -d "$MONTHDIR" ]; then
            mkdir $MONTHDIR
            chown thomas:everyone $MONTHDIR
            chmod 777 $MONTHDIR
        fi

        mv "$FILE" "$MONTHDIR"
	echo "$MONTHDIR/$FILE"
    done
#fi

# Images and videos from Evelyns Samsung Galaxy S6
cd /share/unsere/Bilder/EveSync/

#if [ -f *.jpg ]; then
    # loop over images
    for FILE in *.jpg; do
        NAME=`echo "$FILE"|sed 's/ -.*//'`
        YEAR=`echo "$NAME"|cut -c1-4`
        MONTH=`echo "$NAME"|cut -c5-6`
        MONTH=`date -d $MONTH/01 +%B`
        YEARDIR="/share/unsere/Bilder/$YEAR/"
        MONTHDIR="/share/unsere/Bilder/$YEAR/$MONTH/"
        if [ ! -d "$YEARDIR" ]; then
            mkdir $YEARDIR
            chown thomas:everyone $YEARDIR
            chmod 777 $YEARDIR
        fi
        if [ ! -d "$MONTHDIR" ]; then
            mkdir $MONTHDIR
            chown thomas:everyone $MONTHDIR
            chmod 777 $MONTHDIR
        fi

        mv "$FILE" "$MONTHDIR"
	echo "$MONTHDIR/$FILE"
    done
#fi

#if [ -f *.mp4 ]; then
    # loop over videos
    for FILE in *.mp4; do
        NAME=`echo "$FILE"|sed 's/ -.*//'`
        YEAR=`echo "$NAME"|cut -c1-4`
        MONTH=`echo "$NAME"|cut -c5-6`
        MONTH=`date -d $MONTH/01 +%B`
        YEARDIR="/share/unsere/Videos/$YEAR/"
        MONTHDIR="/share/unsere/Videos/$YEAR/$MONTH/"
        if [ ! -d "$YEARDIR" ]; then
            mkdir $YEARDIR
            chown thomas:everyone $YEARDIR
            chmod 777 $YEARDIR
        fi
        if [ ! -d "$MONTHDIR" ]; then
            mkdir $MONTHDIR
            chown thomas:everyone $MONTHDIR
            chmod 777 $MONTHDIR
        fi

        mv "$FILE" "$MONTHDIR"
	echo "$MONTHDIR/$FILE"
    done
#fi
