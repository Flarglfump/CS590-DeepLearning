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

if [ ! -d $DATADIR/final ]; then
  mkdir -p $DATADIR/final
fi

cd $DATADIR

wget "https://datasets.imdbws.com/title.basics.tsv.gz"
wget "https://datasets.imdbws.com/title.ratings.tsv.gz"
wget "https://datasets.imdbws.com/title.principals.tsv.gz"
wget "https://datasets.imdbws.com/name.basics.tsv.gz"