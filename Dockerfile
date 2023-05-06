FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_DIR /usr/src/app/

WORKDIR ${DJANGO_DIR}

# install netcat
RUN apt-get update && apt-get install -y netcat

# copy and install main dependencies
COPY /pyproject.toml /poetry.lock ./
RUN pip install poetry \
  && poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

# copy other files
COPY . ${DJANGO_DIR}
