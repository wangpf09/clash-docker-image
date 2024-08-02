#!/bin/bash

# wget "https://subs.abyss.moe/sub?target=clash&filename=Astronaut&url=https://today.abyss.moe/link/OnWt1IXOTHyp40dL" -O config.yaml

url="$PROXY_RULE_LINK"
if [ -z "$url" ]; then
    echo "代理规则下载地址为空，请配置环境变量: PROXY_RULE_LINK"
    exit 1
fi

wget "$PROXY_RULE_LINK" -O config.yaml

sed -i '6 a external-ui: /app/ui' config.yaml

./clash -f /app/config.yaml
