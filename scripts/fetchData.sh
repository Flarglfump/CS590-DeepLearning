# bash

if (($# > 1)); then
  DATADIR=$1
else
  DIR="$(dirname "$0")"
  DATADIR="$DIR/../data"
fi

if [ ! -d $DATADIR/processed ]; then
  mkdir -p $DATADIR/processed
fi

cd $DATADIR

wget "https://datasets.imdbws.com/title.basics.tsv.gz"
wget "https://datasets.imdbws.com/name.basics.tsv.gz"
wget "https://datasets.imdbws.com/title.ratings.tsv.gz"
wget "https://datasets.imdbws.com/title.akas.tsv.gz"