FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r .github/
COPY . .
RUN ["/bin/bash", "-c", echo "$FREQ_RESULT"]
ENTRYPOINT ["entrypoint.sh"]
