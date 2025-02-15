# mini-docker-app

This repo contains code for a tiny Flask app I built in a Docker container—just to get a little experience working and deploying in Docker.

I followed [this tutorial](https://web.archive.org/web/20220806133324/https://runnable.com/docker/python/dockerize-your-flask-application), although it's pretty out of date. Check the Dockerfile to see what's changed!

To get the app built, clone the repo and run this.

```
$ docker build -t flask_app .
```

Then, deploy the app with

```
$ docker run -p 5050:5050 flask_app
```
