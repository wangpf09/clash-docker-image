#### 构建命令
```
docker build -t clash:1.8.0 .
```

#### 运行命令
```
docker run --name clash \
  -d -p 7890:7890 \
  -p 7891:7891 \
  -p 9090:9090 \
  -e PROXY_RULE_LINK="https://subs.abyss.moe/sub?target=clash&filename=Astronaut&url=https://today.abyss.moe/link/OnWt1IXOTHyp40dL" \
  clash:1.8.0
```

