---
id: docs_dependencies
guide: docs_dependencies
layout: guide
additional_reading_tags: ["package-json", "yarn-lock"]
---

包的依赖是一个包重要的组成部分。当开发一个包的时候，您很可能使用其他包中定义的已有的代码，这样这些包就成为了这个项目的依赖项。

`package.json` 文件是声明所有依赖关系的地方，从开发依赖到生产依赖再到可选的依赖。您需要为每个依赖关系指定软件包名称和最低版本信息。

Yarn 在安装包的时候会生成 `yarn.lock` 文件，这个文件中存储着安装依赖的信息，这样能够确保每次安装包都会得到一致的依赖（从依赖版本到依赖结构）。
