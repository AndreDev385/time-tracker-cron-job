FROM alpine:latest

# Instalar curl y dependencias
RUN apk add --no-cache curl

# Copiar el script
COPY cronjob.sh /cronjob.sh
RUN chmod +x /cronjob.sh

# Comando a ejecutar (Render ejecutará esto en cada trigger)
CMD ["sh", "/cronjob.sh"]
