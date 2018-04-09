FROM  microsoft/powershell
MAINTAINER Spencer Owen <sowen@netdocuments.com>

#https://serverfault.com/a/856593/169180
ENV TZ 'GMT'

RUN apt-get update -qq; apt-get install nuget git jq tzdata -y
RUN rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get clean

ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []
