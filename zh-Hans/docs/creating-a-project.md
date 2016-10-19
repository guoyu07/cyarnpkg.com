---
id: docs_creating_a_project
guide: docs_yarn_workflow
layout: guide
---

对于现有的项目，或者一个全新的项目，Yarn 的工作流程都是一样的。

在你想添加 Yarn 的目录（通常都是项目的根目录），执行下面的命令：

```sh
yarn init
```

Yarn 首先会展示一个交互的问答卷，指导你填写一些项目信息：

```
name (your-project):
version (1.0.0):
description:
entry point (index.js):
git repository:
author:
license (MIT):
```
所有问题都不是必答的，如果不想回答，点击回车可以跳过该问题，那么答案就会是默认值或者是空字符。

### `package.json` <a class="toc" id="toc-package-json" href="#toc-package-json"></a>

执行上面的命令后，你会得到一个 `package.json` 内容如下：

```json
{
  "name": "my-new-project",
  "version": "1.0.0",
  "description": "My New Project description.",
  "main": "index.js",
  "repository": {
    "url": "https://example.com/your-username/my-new-project",
    "type": "git"
  },
  "author": "Your Name <you@example.com>",
  "license": "MIT"
}
```

当你运行 `yarn init` 命令，Yarn 所做的唯一一件事就是创建上面的 `package.json 文件`，你可以放心的随意编辑这个文件。

`package.json` 中包含你项目的信息：名字、维护人员名单、源代码地址，其中最最重要的是你项目所需要安装的依赖。
