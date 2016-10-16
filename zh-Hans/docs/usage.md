---
id: docs_usage
guide: docs_getting_started
layout: guide
additional_reading_tags: ["basics", "cli"]
---

{% include vars.html %}

现在您已经[安装]({{url_base}}/zh-Hans/docs/install)好 Yarn，您可以开始使用它了。
这里有一些最常用的命令，你一定用得着。

**初始化一个新的项目**

```sh
yarn init
```

**添加一个依赖包**

```sh
yarn add [package]
yarn add [package]@[version]
yarn add [package]@[tag]
```

**更新一个依赖包**

```sh
yarn upgrade [package]
yarn upgrade [package]@[version]
yarn upgrade [package]@[tag]
```

**移除一个依赖包**

```sh
yarn remove [package]
```

**安装项目所有的依赖包**

```sh
yarn
```

or

```sh
yarn install
```
