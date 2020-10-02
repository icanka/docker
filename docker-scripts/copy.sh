#! /bin/bash

if ! output=$(docker inspect gitlab-conf 2>/dev/null); then
      echo "No container gitlab-conf found."


else
          echo "container found"
fi
