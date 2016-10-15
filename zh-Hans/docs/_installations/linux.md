### Debian/Ubuntu Linux

在 Debian 或者 Ubuntu 操作系统上, 你可以通过 Debian 的包仓库来安装 Yarn。
在这之前, 你需要配置仓库:

```sh
sudo apt-key adv --keyserver pgp.mit.edu --recv D101F7899D41F3C3
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```

在 Ubuntu 14.04 和 Debian 稳定版中, 你还需要配置 [Node源仓库](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions）来获取足够新版本的 Node.js ( Debian 测试版和 Ubuntu16.04 会配置较新的 Node.js 版本,  所以在这些环境中可以跳过这步)

然后运行:

```sh
sudo apt-get update && sudo apt-get install yarn
```

### CentOS / Fedora / RHEL

在 CentOS, Fedora 和 RHEL 操作系统上, 你可以通过我们的 RPM 包仓库来安装 Yarn。

```
sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
```

如果你尚未安装 Node.js , 你应该配置 [Node源仓库](https://nodejs.org/en/download/package-manager/#enterprise-linux-and-fedora):

```sh
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
```

然后运行:

```sh
sudo yum install yarn
```

### Arch Linux

在 Arch 操作系统上, 你可以通过 **AUR** 来进行安装。

如果你使用 yaourt 这样的 [AUR Helper](https://wiki.archlinux.org/index.php/AUR_helpers) 工具，你可以简单地运行:

```sh
yaourt -S yarn
```

### Solus

在 Solus 操作系统中，你可以通过 Solus 仓库来安装 Yarn。

```sh
sudo eopkg install yarn
```

### Path Setup

{% include_relative _installations/unix_path_setup.md %}