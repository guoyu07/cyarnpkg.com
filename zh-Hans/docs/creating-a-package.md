---
id: docs_creating_a_package
guide: docs_creating_a_package
layout: guide
---

{% include vars.html %}

一个**包**就是一个目录，这个目录中包含了您的代码以及一个描述包信息的 `package.json` 文件。

大部分的包都会通过版本控制系统来管理代码，比如 git。Yarn 可以与任何一种版本控制系统协作，只不过在我们使用 git 来演示我们的例子。

> **注意：** 在阅读下面文章之前，请确保您已经安装了 [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) 和 [Yarn]({{url_base}}/docs/install)。

### 创建您的第一个包 <a class="toc" id="toc-creating-your-first-package" href="#toc-creating-your-first-package"></a>

运行下面的命令：

```sh
git init my-new-project
cd my-new-project
yarn init
```

这将会创建一个新的 git 工程，进入 git 工程的根目录后，yarn 会创建一个交互式的表单问答卷：

```sh
name (my-new-project):
version (1.0.0):
description:
entry point (index.js):
git repository:
author:
license (MIT):
```

您并不需要回答每一道问题，点击回车可以跳过问题。

> **贴士：** `npm init --yes` 命令会跳过所有问题，那么您的表单会使用默认值。
> 
### `package.json` <a class="toc" id="toc-package-json" href="#toc-package-json"></a>

执行完上述命令后，您会得到一个 `package.json` 文件，字段和内容如下：

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

 `package.json` 文件中的字段：

- **name** 包的名字，您需要确保您起的名字在包仓库中是唯一的，不与其他重复。
- **version** 包的版本，符合 semver 规范。您可以发布任意多的版本，只要保证每次发布都是一个新版本。
- **description** 包的描述，是一个可选项但是推荐填写。填写 `description` 可以帮助其他开发人员搜索和理解您的包。
- **main** 包的入口，是其他程序用来调用包的入口文件。如果没有指定，那么默认为 `index.js`。
- **repository** 包的代码仓库，是一个可选项但是推荐填写。填写 `repository` 有助于那些希望贡献代码的开发者能够找到您的源代码。
- **author** 包的创建者或者维护者，格式：`"Your Name <you@example.com> (http://your-website.com)"`。
- **license** 包的许可，是适用于您的包的法律条款以及您的代码能够被如何使用。

当您运行 `yarn init` 命令，Yarn 所做的唯一一件事就是创建上面的 `package.json 文件`，您可以放心的随意编辑这个文件。



#### 附加字段 <a class="toc" id="toc-additional-fields" href="#toc-additional-fields"></a>

下面列出一些 `package.json` 中您可能会用到的附加字段。

```json
{
  "name": "my-new-project",
  "...": "...",
  "keywords": ["cool", "useful", "stuff"],
  "homepage": "https://my-new-project-website.com",
  "bugs": "https://github.com/you/my-new-project/issues",
  "contributors": [
    "Your Friend <their-email@example.com> (http://their-website.com)",
    "Another Friend <another-email@example.com> (https://another-website.org)"
  ],
  "files": [
    "index.js",
    "lib/*.js",
    "bin/*.js"
  ],
  "bin": {
    "my-new-project-cli": "bin/my-new-project-cli.js"
  }
}
```

- **keywords** 包的关键词，其他开发人员能够通过关键词搜索您的包。
- **homepage** 包的主页链接，主页中应该包括包的介绍、文档和其他资源。
- **bugs** 包的bug列表链接，用来报告包的 bug。
- **contributors** 包的贡献者，如果有其他开发者对您对的包做了贡献，那么您可以把这些人列在 `contributors` 字段中。
- **files** 包的文件，列出了您对包中那些文件是用来发布和安装的。如果没有指定，那么 Yarn 则认为是全部的文件。
- **bin** 包的 bin，包含了包的 cli 命令。

如果想查看 `package.json` 所有的字段以及更多有关信息，请查看 [`package.json` 文档]({{url_base}}/docs/package-json)。

### 许可与开源 <a class="toc" id="toc-licensing-and-open-source" href="#toc-licensing-and-open-source"></a>

Yarn 包通常是被鼓励[开源](https://opensource.org/definition)的，然而需要注意的是发布包并不代表着就是开源了。

每一个开源代码都需要指定一个许可，目前有很多许可可以选择，下面列出几种通用的许可供参考：

- [MIT License](http://choosealicense.com/licenses/mit/)
- [Apache License 2.0](http://choosealicense.com/licenses/apache-2.0/)
- [GNU General Public License 3.0](http://choosealicense.com/licenses/gpl-3.0/)

更多许可请查看[许可列表](http://choosealicense.com/licenses/)。

一旦您选择了某一种许可，请在包的根目录添加 `LICENSE` 文件，并把许可种类添加到 `package.json` 的 `license` 字段。

> **注意**：如果您不想开源您的软件，那么在选择许可时一定要谨慎。

### 代码共享 <a class="toc" id="toc-code-sharing" href="#toc-code-sharing"></a>

如果您希望您开发的包的用户能够贡献代码，或者发布一些 issue，您可以在网络中共享您的代码，下面有几个著名的代码仓库能够托管您的代码：

- [GitHub](https://github.com)
- [GitLab](https://about.gitlab.com/)
- [Bitbucket](https://bitbucket.org/)

您的代码托管在上面之后，其他开发人员能够查看您的代码，提交issue，贡献代码。一旦您在网络中托管了您的代码，请在 `package.json` 文件中添加下面的字段：

```json
{
  "homepage": "https://github.com/username/my-new-project",
  "bugs": "https://github.com/username/my-new-project/issues",
  "repository": {
    "url": "https://github.com/username/my-new-project",
    "type": "git"
  }
}
```

### 文档 <a class="toc" id="toc-documentation" href="#toc-documentation"></a>

在发布包之前，最好为包编写文档。如果没有编写文档，最小限度也要在包的根目录创建一个 `README.md` 文件，包含包的介绍、文档以及API等信息。

好的文档能够让其他开发者尽快上手您的包，并在后续使用中提供帮助。考虑如果一个从来没有用过您的包的开发者会遇到什么问题。文档的编写要尽量的详细和准确，但是同时要保持简洁和易懂。**一个高质量的文档会让您的包更加好用和流行**。

### Keep packages small <a class="toc" id="toc-keep-packages-small" href="#toc-keep-packages-small"></a>

Yarn 包建议是小巧和简单的。尽可能的把一个很大的包拆分成若干个小包。因为 Yarn 有能力在很短的时间内快速安装成数百上千的包，所以强烈建立采用小包的设计方式。

对于包管理工具来说，小巧的包也是很好的。当安装这些依赖的时候，更小的包意味着更少依赖的数量，下载的文件数量和大小也会降低。

每一次发布包都要谨慎，确保发布版本的代码中测试代码和其他不必要的代码。

在选择依赖的时候也要十分谨慎，尽量选择依赖小而美的包。如果您要依赖一个很大的包，那么请确认这个依赖是必须的。
