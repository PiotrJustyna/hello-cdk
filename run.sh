docker build -t hello-world-api -f ./dockerfile ./ &&
  docker run -it -p 5432:80 --rm hello-world-api