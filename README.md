# 42_Inception
113  docker image prune
  114  docker images
  115  docker build -t wordpress .
  116  docker run -d wordpress
  117  docker ps
  118  docker run -it  wordpress
  119  docker ps
  120  docker build -t wordpress .
  121  docker build -t wordpress:test -f .
  122  docker build -t wordpress:test .
  123  docker build --no-cache -t wordpress:test .
  124  docker images
  125  docker run -d wordpress:test 
  126  docker ps
  127  docker ps -a
  128  ls
  129  cat Dockerfile 
  130  docker build --no-cache -t wordpress:test -f ./Dockerfile 
  131  docker build --no-cache -t wordpress:test .
  132* 
  133  docker ps -a
  134  docker ps
  135  docker exec -ti goofy_hodgkin bash
  136  docker stop goofy_hodgkin 
  137  docker ps
  138  docker run -d wordpress:test --mount type=bind, source=./,target=/tmp
  139  docker run -d wordpress:test --mount type=bind, source="$(PWD)",target=/tmp
  140  docker run -d wordpress:test --mount type=bind, source="$(pwd)",target=/tmp
  141  .env
  142  env
  143  docker run -d wordpress:test --mount type=bind, source=/home/wlo/inception/WordPress,target=/tmp
  144  docker ps
  145  docker run -d --mount type=bind, source=/home/wlo/inception/WordPress,target=/tmp wordpress:test
  146  docker run -d --mount type=bind,source=/home/wlo/inception/WordPress,target=/tmp wordpress:test
  147  docker ps
  148  docker exec -ti dazzling_curran bash
