FROM python:3.7.2-alpine



RUN pip install --upgrade pip



RUN adduser -D worker
USER worker
WORKDIR /home/worker



RUN pip install --user pipenv
RUN pip install --user nose

ENV PATH="/home/worker/.local/bin:${PATH}"

# COPY --chown=worker:worker Pipfile Pipfile



COPY --chown=worker:worker . .

