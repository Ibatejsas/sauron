FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools

COPY themes/base-Sauron/ /opt/jboss/keycloak/themes/base-Sauron/
COPY themes/sauron/ /opt/jboss/keycloak/themes/sauron/

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

