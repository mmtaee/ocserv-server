FROM ubuntu:20.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends ocserv gnutls-bin iptables openssl
COPY ./service.sh /service.sh 
COPY ./entrypoint.sh /entrypoint.sh 
RUN chmod +x /service.sh /entrypoint.sh
RUN echo net.ipv4.ip_forward=1 | tee -a /etc/sysctl.conf && sysctl -p
EXPOSE 443/tcp 443/udp
VOLUME ["/etc/ocserv"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/service.sh"]