FROM inspiredbusiness/odoo-dev:8.0

MAINTAINER Chris White <chris@inspiredbusiness.com.au>

USER 0

RUN sudo apt-get update
RUN sudo apt-get install xpra -y

RUN sudo chmod +x /opt/dev/bin/start-eclipise

USER odoo

CMD xpra start :100 --bind-tcp 0.0.0.0:6100 --no-daemon --start-child=/opt/dev/bin/start-eclipise
# --exit-with-children 

VOLUME ["/opt/dev/workspace"]
EXPOSE 6100
ENTRYPOINT []
