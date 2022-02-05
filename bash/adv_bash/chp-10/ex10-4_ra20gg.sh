#!/bin/bash
# ra2ogg.sh: Convert streaming audio files (*.ra) to ogg.

# Uses the "mplayer" media playyer program:
#	http://www.mplayerhq.hu/hompeage
# Uses the "ogg" library and "oggenc"
#	http://www.xiph.org/
#
# This script may need appropriate codecs installed, such as sipr.so ...
# Possibly also the compat-libstdc++ package.

OFILEPREF=${1%%.}	# Strip off the "ra" suffix.
OFILESUFF=.wav		# Suffix for wav file.
OUTFILE="$OFILEPREF""$FILESUFF"
E_NOARGS=85

if [ -z "$1" ]		# Must specify a filename to convert.
then
	echo "Usage: `basename $0` [filename]"
	exit $E_NOARGS
fi

#########################################################################
mplayer "$1" -ao pcm:file=$OUTFILE
oggenc "$OUTFILE" # Correct file extension automatically added by oggenc
#########################################################################

rm "$OUTFILE"	# delete intermediate *.wav file
		# If you want to keep it, comment above line.

exit $?

# Note:
# ----
# On a Website, simply clicking on a *.ram streaming audio file
#+usually only downloads the URL of the actual *.ra audio file.
# You can then use "wget" or something similiar
#+to download the *.ra file itself.

# Exercise:
# --------
# As is, this script convert only *.ra filenames.
# Add flexibility by permitting use *.ram and other filenames.
#
# If you're really ambitious, expand the script
#+to do automatic download and conversion of streaming audio files.
# Given a URL, batch download streaming audio files (using "wget" )
#+ and convert them on the fly.
