# readme

Just a simple repository to explore cdk with .net/f#. The goal is to deploy an f# web api to aws ecs with cdk.

## web api

The api is written in f# and dockerized. To quickly run it, run the `run.sh` file which will build the image and run its container. The application can be accessed on [localhost:5432/helloworld](localhost:5432/helloworld).

## prerequisites

This repository was written for mac os, but installation on other operating systems should not be much different.

* install aws deploy: `dotnet tool install -g aws.deploy.cli` ([source](https://aws.amazon.com/blogs/developer/update-new-net-deployment-experience/))
* install node.js ([source](https://nodejs.org/en/))

## the experiment

* authenticate with aws
* run `dotnet aws deploy`
* choose the name of your stack
* choose deployment options (we are going to chose ecs)
* [TODO] we're going to have to change some advanced settings as it looks like the application gets automatically deployed to fargate while our preference is ec2
* [TODO] looks like `aws deploy` uses cloudformation by default

## reading

* Following this article: [dotnet --list-sdk](https://aws.amazon.com/blogs/developer/update-new-net-deployment-experience/). Only touches on the dotnet tool. Not super useful.
* https://github.com/aws/aws-dotnet-deploy - this is more fleshed out, uses CDK behind the scenes. Very basic setup, but works.
* https://docs.aws.amazon.com/cdk/v2/guide/work-with-cdk-csharp.html - basic principles of cdk, not very useful from the hot swapping perspective.
* https://docs.aws.amazon.com/cdk/api/v2/dotnet/api/index.html - reference. Not tremendously useful to begin with.
* https://cdkworkshop.com/40-dotnet.html - basic, not very useful.