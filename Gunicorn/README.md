该镜像中的pip源为阿里的，因此对国内用户更加友好！

### 思想
1. Dockerfile中修改pip源为阿里源
2. 默认安装gunicorn容器
3. 启动时安装一次requirements.txt（放在app目录下），如果有更新则实时安装
4. 启动文件必须为main.py，且放在app目录下，app目录外挂
5. 如果在app目录下未找到对应的文件，则启动默认服务helloworld
6. 启动线程数可配置

### 建立镜像
```
# 建立镜像
docker build -f Dockerfile -t 1612127/gunicorn:latest .
# 调试镜像
docker run --rm -it 1612127/gunicorn bash
```

### 镜像地址
https://hub.docker.com/r/1612127/gunicorn