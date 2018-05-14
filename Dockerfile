FROM python:2.7.15-stretch

RUN pip install ipaddress repoze.lru dnslib ipaddr cryptography future
RUN git clone https://github.com/v3aqb/fwlite.git --depth=1

VOLUME /data

RUN echo 'if [ -f "/data/userconf.ini" ]; then cp /data/userconf.ini fwlite/; fi' > start.sh &&\
    echo 'if [ -f "/data/local.txt" ]; then cp /data/local.txt fwlite/fgfw-lite/; fi' >> start.sh &&\
    echo 'if [ -f "/data/gfwlist.txt" ]; then cp /data/gfwlist.txt fwlite/fgfw-lite/; fi' >> start.sh &&\
    echo 'python2.7 fwlite/fgfw-lite/fgfw-lite.py' >> start.sh

CMD ["sh", "start.sh"]

EXPOSE 8118
