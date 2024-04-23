# bash

if (($# > 1)); then
  DATADIR=$1
else
  DIR="$(dirname "$0")"
  DATADIR="$DIR/../data"
fi

if [ ! -d $DATADIR ]; then
  echo "Error: directory \"$DATADIR\" does not exist!"
  exit
fi

cd $DATADIR

DATADIR=(`pwd`)

for FILE in $DATADIR/*.gz; do
  echo gunzip $FILE
  gunzip $FILE
done