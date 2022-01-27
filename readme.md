# readme

Just a simple repository to explore cdk with .net/f#. The goal is to deploy an f# web api to aws ecs with cdk.

## web api

The api is written in f# and dockerized. To quickly run it, run the `run.sh` file which will build the image and run its container. The application can be accessed on [localhost:5432/helloworld](localhost:5432/helloworld).

## cdk

* Following this article: [dotnet --list-sdk](https://aws.amazon.com/blogs/developer/update-new-net-deployment-experience/). Only touches on the dotnet tool. Not super useful.
* https://github.com/aws/aws-dotnet-deploy - this is more fleshed out, uses CDK behind the scenes.