FROM php:8.2-cli-alpine
WORKDIR /app
COPY . /app
RUN addgroup -S app && adduser -S -G app app
EXPOSE 80
HEALTHCHECK CMD curl -f http://localhost:80/ || exit 1
USER app
CMD ["php","-S","0.0.0.0:80"]