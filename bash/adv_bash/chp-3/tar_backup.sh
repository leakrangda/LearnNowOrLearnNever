#!/bin/bash

# Backs up all files in current directory modified within last 24 hours
# in a "tarball" (tarred and gzipped file).

BACKUPFILE=backups-$(date +%m-%d-%Y)
#	embeds date in backups filename.
#	Thanks , joshua tschida, for the idea.
archive=${1:-$BACKUPFILE}
# if no backup-archive filename sepcified on command-line,
# it will default to "backup-MM-DD-YYYY.tar.gz."

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."
# Stephane Chazelas points out that the above code will fail
# if there are too many files found
# or if any filenames obtain blank characters.

# He suggests the following alternatives:
# -----------------------------------------------------------------------------
#	find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
#		using the GNU version of "find".
#


#	find . -mtime -1 -type f -exec tar rvf "$archive.tar" '{}' \;
#		portable to other UNIX flavors, but much slower.
# -----------------------------------------------------------------------------

exit 0
