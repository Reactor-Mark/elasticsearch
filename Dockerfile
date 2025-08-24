# Dockerfile para Railway
FROM docker.elastic.co/elasticsearch/elasticsearch:8.12.1

# Configuración para un solo nodo
ENV discovery.type=single-node
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Expón el puerto 9200 (Railway lo mapeará automáticamente)
EXPOSE 9200
