#### 安装脚本

一种最简单的在 macOS 和 通用的 UNIX 环境中安装 Yarn 的方式是通过我们的 shell 脚本。
你可以在终端中运行以下命令来安装 Yarn:

```sh
curl -o- -L https://yarnpkg.com/install.sh | bash
```

#### 通过压缩包安装

你可以通过 [下载压缩包]({{site.baseurl}}/latest.tar.gz) 来随地提取和安装 Yarn。

```sh
cd /opt
wget https://yarnpkg.com/lastest.tar.gz
tar zvxf yarn-*.tar.gz
# Yarn 现在在 /opt/yarn-[version]/
```
