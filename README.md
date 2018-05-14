# fwlite Docker Image

- fwlite = <https://github.com/v3aqb/fwlite>
- Dockerfile = <https://github.com/helphi/Dockerfile-fwlite/blob/master/Dockerfile>

# 用法

- $PWD/fwlite/userconf.ini 用于存放配置文件，没有fwlite则会使用[默认配置](https://github.com/v3aqb/fwlite/blob/master/userconf.sample.ini)
- $PWD/fwlite/local.txt 用于增加自定义规则

```sh
docker run -d --name=fwlite  -v $PWD/fwlite:/data -p8118:8118  helphi/fwlite
```

> 不挂载数据卷fwlite则使用默认配置启动
