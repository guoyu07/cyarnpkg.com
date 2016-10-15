---
id: docs_version_control
guide: docs_yarn_workflow
layout: guide
additional_reading_tags: ["dependencies", "package-json", "yarn-lock"]
---

为了让其他人能够成功地开发或使用您的包，您需要确保您的源代码管理系统中已包含所有必要的文件。

### 必要文件 <a class="toc" id="toc-required-files" href="#toc-required-files"></a>

要让任何人能够管理您的包，下列文件必须确保被源代码管理系统包含：

- `package.json`: 该文件记录了您的包的当前版本的所有依赖。
- `yarn.lock`: 该文件记录了所有依赖的确切版本号。
- 其他能够为您的包提供实际功能的确切代码。

> 项目 [Yarn Example Package](https://github.com/yarnpkg/example-yarn-package) 展示了一个 Yarn 包的最小依赖。
