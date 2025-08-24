# Usa la imagen oficial de Elasticsearch
FROM docker.elastic.co/elasticsearch/elasticsearch:8.12.1

# Configuración para un solo nodo y bajo consumo de memoria
ENV discovery.type=single-node
ENV ES_JAVA_OPTS="-Xms256m -Xmx256m"  # Reduce a 256 MB

# Desactiva algunas características que consumen recursos
ENV bootstrap.memory_lock=false
ENV xpack.security.enabled=false   # Desactiva seguridad si no la necesitas

# Expón el puerto HTTP (Railway asignará el PORT automáticamente)
EXPOSE 9200
