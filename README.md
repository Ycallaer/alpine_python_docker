# alpine_python_docker
**Work in progress. Don't use yet**

Docker image for **python3** on alpine linux.
Included are the most commonly used scientific packages for python:
* numpy: 1.13.0
* scipy: 1.0.0
* scikit-learn: 0.19.1
* pandas: 0.22.0

#  How do I build this application
In the root directory of this project you can run the following command:

**docker build -t imagename -f docker/Dockerfile . --no-cache**

This will start a docker build.

#  How do I run this application

When the build has been completed and you want to run this as is, you can just run the following command

**docker run -it imagename:latest**

This will start a direct shell into the docker.
However, it is better to build this image and use it as a reference in an other dockerfile

#  Changing version numbers
If you copy the code content and start changing version numbers of the scientific packages there is no guarantee
that the code will still work as the dependencies of these technologies are heavily intertwined
