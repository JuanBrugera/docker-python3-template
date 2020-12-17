# docker-python3-template
Template for dockerized applications developed in Python3

## General information
- Base image: [python:3-alpine](https://hub.docker.com/_/python)

## Building and running
- Build
```shell script
docker build -t <image_tag> .
```
- Run
```shell script
docker run -i -t --rm <image_tag>
```

For additional information about _build_ and _run_ commands:
```shell script
docker build --help
docker run --help
```

A simplified version is available by using the build.py and run.py scripts. These will take the name of the root directory as the image tag.
```shell script
python build.py # equivalent to "docker build -t docker-python3-template"
python run.py # equivalent to "docker run -i -t --rm docker-python3-template"
```
## Considerations
- In case of installing new dependencies, requirements.txt needs to be updated before build.
```shell script
# after pip install
pip freeze > requirements.txt
```
- To modify the Docker image you only need to modify the file called Dockerfile. More information about Dockerfile [here](https://docs.docker.com/engine/reference/builder/). 
