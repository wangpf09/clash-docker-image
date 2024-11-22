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
  -e PROXY_RULE_LINK="" \
  clash:1.8.0
```

clash-dashboard中的git-log目录为原.git目录可以自行还原，不需要使用则直接删除即可

