# build front-end
FROM node:18.20.4 AS frontend

RUN npm install pnpm -g --registry https://registry.npmmirror.com

WORKDIR /app

COPY ./clash-dashboard/ .

RUN pnpm install --registry https://registry.npmmirror.com
RUN pnpm run build

# runtime image
FROM alpine:3.18.2

WORKDIR /app

COPY --from=frontend /app/dist ./ui
COPY ./Country.mmdb /root/.config/clash/Country.mmdb
# COPY ./Sockboom.txt /root/.config/clash/config.yaml

ENV PROXY_RULE_LINK=""

COPY ./clash .
COPY ./start.sh .
RUN chmod +x clash start.sh

CMD ["sh", "./start.sh"]

