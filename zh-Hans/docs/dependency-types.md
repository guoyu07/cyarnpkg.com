---
id: docs_dependency_types
guide: docs_dependencies
layout: guide
---

依赖有很多不同的用途。一些依赖项是构建项目所需要的，另一些则是运行时需要的。因此，你可以有许多不同类型的依赖（例如 `dependencies`，`devDependencies` 和 `peerDependencies`）。

`package.json` 包含所有这些依赖：

```json
{
  "name": "my-project",
  "dependencies": {
    "package-a": "^1.0.0"
  },
  "devDependencies": {
    "package-b": "^1.2.1"
  },
  "peerDependencies": {
    "package-c": "^2.5.4"
  },
  "optionalDependencies": {
    "package-d": "^3.1.0"
  }
}
```
大多数人只会添加 `dependencies` 和 `devDependencies`，但是理解每一种依赖的类型都很重要。

##### `dependencies` <a class="toc" id="toc-dependencies" href="#toc-dependencies"></a>

这些是普通依赖，也就是生产环境运行代码时需要的依赖（例如 React 或 ImmutableJS）。

##### `devDependencies` <a class="toc" id="toc-devdependencies" href="#toc-devdependencies"></a>

这些是开发依赖。在开发工作流程中的某个点需要的依赖，但是在生产环境运行代码时并不需要（例如 Babel 或 Flow）。

##### `peerDependencies` <a class="toc" id="toc-peerdependencies" href="#toc-peerdependencies"></a>

同伴依赖是一种很特殊的依赖，只有在包发布后哦才有可能会被使用。

需要声明同伴依赖的情况：如果你开发了一个包，与宿主包（安装你的包的项目）有同样的依赖，那么需要把这个依赖声明到你的包的同伴依赖中，这样会由宿主包来安装这个依赖。通常用在插件包的开发，比如在 `react-dom` 的 `peerDependencies` 会声明对 `react` 的依赖。

##### `optionalDependencies` <a class="toc" id="toc-optionaldependencies" href="#toc-optionaldependencies"></a>

顾名思义就是：可选。如果安装失败，Yarn 仍然会告诉你安装过程成功。

这对于不一定在每台计算机上都能正常工作的依赖非常有用，并且由于它们并未被安装，您可以有备用的计划（例如：Watchman）。

##### `bundledDependencies` <a class="toc" id="toc-bundleddependencies" href="#toc-bundleddependencies"></a>

一个包含了包名称的数组，这些包会在发布一起被打包。

Bundled dependencies 应该在您的项目中。该功能基本上与正常的 dependencies 相同。当运行 `yarn pack` 时，它们也会被打包。

正常的依赖通常从 npm 仓库中安装。Bundled Dependencies 在正常的依赖不足的情况下很有用：

- 当您想重新使用不是来自 npm 仓库或者被修改的第三方 lib 时。
- 当您想重新使用您自己的项目作为模块时。
- 当您想要分发模块中的某一些文件时。
