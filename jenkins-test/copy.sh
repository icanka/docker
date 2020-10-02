#! /bin/bash


key="$1"
case $key in
    -i|--image)
    IMAGE="$2"
    shift
    shift
    ;;
esac

for var in "$@"
do
  echo docker run --rm -it -v $var:/from alpine


done
#docker run --rm -it -v 545621b3a2da0992bccceb54c453918976f904766735d65a9929b5ed47da2976:/from -v jenkins-test_gitlab-log:/to alpine ash -c "rm -rf /to;cd /from; cp -av . /to"
