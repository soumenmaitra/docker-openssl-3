# Docker openssl-3.0.0
Docker image used to switch the openssl version in an ubuntu image to openssl 3.0.0: When you need to be at the forefront but dont want to install an alpha version on your regular machine

# Why
When you need a newer version of openssl for i.e running a webserver, this image is a perfect layer to continue layering your openssl dependent webserver upon.

# Installation
```
docker build -t aeakoski/openssl:3.0.0 .
docker run -it aeakoski/openssl:3.0.0
docker exec openssl verson

```

# Loose ends
Somehow I need to run the following commands in the application container that is being layered on top of this openssl image. This image experiences build errors if the commands are run at the end of this build process. But everything works just fine if the following two lines are added to the beginning of the next image layers dockerfile:

```
RUN ln -s libssl.so.3 libssl.so
RUN ldconfig
```

Have not investigated this further.
