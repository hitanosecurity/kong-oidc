FROM kong:2.2
ENV KONG_PLUGINS="bundled, oidc"
LABEL description="Kong 2.2 + kong-oidc plugin"

USER root
RUN apk update && apk add git unzip luarocks
RUN apk add --no-cache zip git && \
    luarocks install https://raw.githubusercontent.com/zmartzone/lua-resty-openidc/v1.7.4/lua-resty-openidc-1.7.4-1.rockspec

USER kong

