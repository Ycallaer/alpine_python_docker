FROM alpine:3.7
Maintainer Yves

RUN apk upgrade --update && apk add --no-cache python3 python3-dev gcc gfortran freetype-dev musl-dev libpng-dev g++ lapack-dev
RUN pip3 install virtualenv
RUN pip3 install --no-cache-dir numpy==1.13.0 scipy==1.0.0 pandas==0.22.0 scikit-learn==0.19.1