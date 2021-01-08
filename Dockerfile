FROM kong:2.2
ENV KONG_PLUGINS="bundled, oidc"
LABEL description="Kong 2.2 + kong-oidc plugin"

USER root
RUN apk update && apk add git unzip luarocks
RUN apk add --no-cache zip git && \
    luarocks install https://raw.githubusercontent.com/hitanosecurity/kong-oidc/master/kong-oidc-1.1.0-0.rockspec

USER kong

