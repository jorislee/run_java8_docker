# run_java8_docker

run java program

docker build -t run_java8_docker:latest .

docker run -it --rm -p 8080:8080 -v /home/lqq/Desktop/code:/home --name java8 run_java8_docker:latest /bin/bash