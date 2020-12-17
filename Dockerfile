# Get base image
FROM python:3-alpine

# Copy files to container
ADD . /python-app

# Set workdir
WORKDIR /python-app

# Check python version and install requirements
RUN python --version
RUN pip install -r requirements.txt

# Run the app
ENTRYPOINT python -m app