# bash

if (($# > 1)); then
  DATADIR=$1
else
  DIR="$(dirname "$0")"
  DATADIR="$DIR/../data"
fi

if [ ! -d $DATADIR ]; then
  mkdir -p $DATADIR
fi

cd $DATADIR

wget "https://datasets.imdbws.com/title.basics.tsv.gz"
wget "https://datasets.imdbws.com/name.basics.tsv.gz"
wget "https://datasets.imdbws.com/title.ratings.tsv.gz"