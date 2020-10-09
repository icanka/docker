docker run --rm -it -v 545621b3a2da0992bccceb54c453918976f904766735d65a9929b5ed47da2976:/from -v jenkins-test_gitlab-log:/to alpine ash -c "rm -rf /to;cd /from; cp -av . /to"
if [ $? == 1 ]; then
    echo  "hekki"
fi