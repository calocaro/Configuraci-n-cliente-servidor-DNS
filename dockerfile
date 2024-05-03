FROM debian:buster

# Instala BIND9
RUN sudo apt-get update && apt-get install -y bind9

# Copia los archivos de configuración personalizados (opcional)
# COPY named.conf.options /etc/bind/named.conf.options
# COPY named.conf.local /etc/bind/named.conf.local
# ...

# Exponer el puerto DNS (opcional, depende de cómo quieras configurar el acceso)
# EXPOSE 53

# Comando por defecto para ejecutar BIND9
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
