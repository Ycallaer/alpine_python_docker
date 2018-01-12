# alpine_python_docker

Docker image for **python3** on alpine linux.
Included are the most commonly used scientific packages for python:
* numpy: 1.13.0
* scipy: 1.0.0
* scikit-learn: 0.19.1
* pandas: 0.22.0

Packages that are downloaded as prerequisite for the above:
* six
* pytz
* python-dateutil

#  How do I build this application
In the root directory of this project you can run the following command:

**docker build -t imagename -f docker/Dockerfile . --no-cache**

This will start a docker build.

#  How do I run this application

When the build has been completed and you want to run this as is, you can just run the following command

**docker run -it imagename:latest**

This will start a direct shell into the docker.
However, it is better to build this image and use it as a reference in an other dockerfile

# Verifying python is working 
So once the docker is running you can start python. Try importing pandas as an example.
You'll see the following output if you run the example:

```
/ # python3
Python 3.6.3 (default, Nov 21 2017, 14:55:19) 
[GCC 6.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import pandas as pd
```

#  Changing version numbers
If you copy the code content and start changing version numbers of the scientific packages there is no guarantee
that the code will still work as the dependencies of these technologies are heavily intertwined
