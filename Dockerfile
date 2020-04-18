# Dockerfile

# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /docker_projects

# Install dependencies
COPY Pipfile Pipfile.lock /docker_projects/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /docker_projects/
