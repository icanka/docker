#! /bin/bash

key="$1"
case $key in
-i | --image)
  IMAGE="$2"
  shift
  shift
  ;;
esac

BASE_COM="docker run --rm -it"

for var in "$@"; do
  BASE_COM+=" -v $var:/$var"
done

if [[ -n $IMAGE ]]; then
  BASE_COM+=" $IMAGE"
else
  BASE_COM+=" alpine"
fi

#docker run --rm -it -v 545621b3a2da0992bccceb54c453918976f904766735d65a9929b5ed47da2976:/from -v jenkins-test_gitlab-log:/to alpine ash -c "rm -rf /to;cd /from; cp -av . /to"
echo "$BASE_COM"
$BASE_COM
