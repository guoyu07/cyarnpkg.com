---
id: docs_configuration_index
guide: docs_configuration
layout: guide
---

<!-- [TODO: Rewrite and accommodate for other configuration files] -->

## 包的配置 <a class="toc" id="toc-configuring-your-package" href="#toc-configuring-your-package"></a>

Yarn 包的配置文件是每一个包根目录下的 `package.json` 文件。

看一个 `pet-kitten` 包的配置示例，`pet-kitten/package.json`：


```
{
  "name": "pet-kitten",
  "version": "0.1.0",
  "main": "pet.js",
  "dependencies": {
    "hand": "1.0.0"
  }
}
```

## 使用 `yarn.lock` 来锁定依赖<a class="toc" id="toc-use-yarn-lock-to-pin-your-dependencies" href="#toc-use-yarn-lock-to-pin-your-dependencies"></a>

Yarn 还在包的根目录中创建了一个名为 `yarn.lock` 的文件，来保证项目的依赖解析快速并且可靠。 你不需要管理这个文件，当你更新依赖配置时，Yarn 会自动修改它。

为了确保您的应用程序始终如一的运行，**你需要把 `yarn.lock` 文件提交到你的仓库里。**
