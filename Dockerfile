FROM php:8.2-cli
RUN useradd -m -s /bin/bash appuser
COPY . /app
EXPOSE 80
HEALTHCHECK CMD curl --fail http://localhost:80/ || exit 1
USER appuser
CMD ["php","-S","0.0.0.0:80","-t","/app"]
