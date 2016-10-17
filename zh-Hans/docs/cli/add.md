---
id: docs_cli_add
guide: docs_cli
layout: guide
additional_reading_tags: ["dependencies"]
---

{% include vars.html %}

<p class="lead">安装一个包以及它所依赖的所有包。</p>

<a class="toc" id="toc-adding-dependencies" href="#toc-adding-dependencies"></a>

### 添加依赖

当你想使用一个包的时候，你需要先把他加到你的依赖中。可以运行 `yarn add [pakcage-name]` 将它安装到你的项目中。

这同时会更新你的 `package.json` 和 `yarn.lock`，其他开发者在开发这个项目的时候，可以运行 `yarn` 或 `yarn install` 就会安装到完全相同的依赖了。

大部分包可以通过包名从 [npm registry](https://www.npmjs.com) 中安装。比如： `yarn add react` 将会从 npm registry 中安装 [`react`](https://www.npmjs.com/package/react)。

你可以用以下方式指定特定的版本：

1. `yarn add package-name` 会安装这个包的最新版本。
2. `yarn add package-name@1.2.3` 会安装一个特定的版本。
3. `yarn add package-name@tag` 会安装一个特点的
  ["tag"]({{url_base}}/docs/cli/tag)（比如 `beta`、`next` 或 `latest`）。

一般来说，一个包就是一个包含代码和描述文件 `package.json` 的文件夹。
你可以通过不同的方式指定一个包：

1. `yarn add package-name` 会从 [npm registry](https://www.npmjs.com/)
  中安装包，除非你在 `package.json` 中指定了其他源。
2. `yarn add file:/path/to/local/folder` 会从你的文件系统中安装包。
  这个方式经常用于测试那些还没有发布的包。
3. `yarn add file:/path/to/local/tarball.tgz` 会从压缩文件中安装包。
  常用于在发布前把包共享给其他人。
4. `yarn add <git remote url>` 会从 git 仓库中安装包。
5. `yarn add https://my-project.org/package.tgz` 会从远程的压缩文件中安装包。

<a class="toc" id="toc-caveats" href="#toc-caveats"></a>

### 警告

如果你以前用过包管理器，比如 npm，那么你可能想知道如何安装一个全局的依赖。

对于绝大多数包，有全局依赖是一个不好的做法，因为它们是隐式的。
最好是在本地添加所有的依赖，这样的话它们就是显式的，任何使用你的项目的人都将获得相同的依赖关系。

如果你想使用一些带命令行工具的包，那么你可以在 `./node_modules/.bin` 中找到它。

##### `yarn add <package...>` <a class="toc" id="toc-yarn-add" href="#toc-yarn-add"></a>

这将会安装 `<package>` 到
[`dependencies`]({{url_base}}/docs/dependency-types#toc-dependencies).

##### `yarn add <package...> --dev` <a class="toc" id="toc-yarn-add-dev" href="#toc-yarn-add-dev"></a>

这将会安装 `<package>` 到
[`devDependencies`]({{url_base}}/docs/dependency-types#toc-dev-dependencies).

##### `yarn add <package...> --peer` <a class="toc" id="toc-yarn-add-peer" href="#toc-yarn-add-peer"></a>

这将会安装 `<package>` 到
[`peerDependencies`]({{url_base}}/docs/dependency-types#toc-peer-dependencies).

##### `yarn add <package...> --optional` <a class="toc" id="toc-yarn-add-optional" href="#toc-yarn-add-optional"></a>

这将会安装 `<package>` 到
[`optionalDependencies`]({{url_base}}/docs/dependency-types#toc-optional-dependencies).

##### `yarn add <package...> --exact` <a class="toc" id="toc-yarn-add-exact" href="#toc-yarn-add-exact"></a>

这将会安装一个包的精确版本。
而默认情况下会安装相同大版本号的最新版本。
比如 `yarn add foo@1.2.3` 就可以接受 `1.9.1`，
但是 `yarn add foo@1.2.3 --exact` 将会安装 `1.2.3`。

##### `yarn add <package...> --tilde` <a class="toc" id="toc-yarn-add-tilde" href="#toc-yarn-add-tilde"></a>

这将会安装一个包的次版本号的最新版本。
而默认情况下会安装相同大版本号的最新版本。
比如 `yarn add foo@1.2.3 --tilde` 可以接受 `1.2.9` 而不接受 `1.3.0`。
