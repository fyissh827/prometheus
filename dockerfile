# Dockerfile
FROM prom/prometheus:latest

COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE 9090

# Only pass the config file, do not repeat the executable
CMD ["--config.file=/etc/prometheus/prometheus.yml"]