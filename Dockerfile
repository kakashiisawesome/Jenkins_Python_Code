FROM python:3.7.2-alpine



RUN pip install --upgrade pip



RUN adduser -D worker
USER worker
WORKDIR /home/worker



RUN pip install --user pipenv


ENV PATH="/home/worker/.local/bin:${PATH}"

# COPY --chown=worker:worker Pipfile Pipfile
RUN pip install --user nose


COPY --chown=worker:worker . .

