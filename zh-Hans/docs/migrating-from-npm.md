---
id: docs_migrating_from_npm
guide: docs_migrating_from_npm
layout: guide
---
对于大多数用户来说从 npm 迁移到 Yarn 是很容易的。Yarn 可以直接使用 npm 的 `package.json` 并且安装任何的npm包。

当你尝试在你的 npm 项目中使用 Yarn，只需要运行下面的命令：

```sh
yarn
```

Yarn 的解析算法会对你的 node_modules 文件夹里的内容进行重新编排，这个解析算法是完全兼容 node.js [node.js module resolution algorithm](https://nodejs.org/api/modules.html#modules_all_together)的。

如果在执行时发生了错误，请搜索现有的issue查看是否有解决方案。如果没有的话，请发 [issue](https://github.com/yarnpkg/yarn/issues)。

当你运行 `yarn` 或者 `yarn add <package>` 命令了，Yarn 会在包的根目录下生成一个 `yarn.lock` 文件。你不需要关心这个文件的内容，只是把它提交到代码仓库中。当其他人检入你的包，并执行 Yarn 安装时，会得到跟你完全一样的依赖（从依赖版本，到依赖结构）。

在大多数情况下 `yarn` 或者 `yarn add` 命令都是可以工作的。但是有少数情况，如果 `package.json` 中的内容有问题，可能会造成 Yarn 在选择依赖的时候发生依赖冲突的情况，尤其在一些大型的项目中 `npm install` 没有正常安装，那么开发者会删除掉 `node_modules` 文件夹，重新安装。如果发生这种情况，请首先使用 `npm` 去安装正确版本的依赖，然后切换到 Yarn。

团队中的其他开发人员仍然可以使用 `npm`，因此并不需要整个团队在同一时间统一切换到 Yarn。那些使用 `yarn` 的开发者，他们在本地安装的依赖是完全一样的（从依赖版本，到依赖结构），而那些使用 `npm` 的开发者，他们在本地安装的依赖则略有差别，这也是 `npm` 的预期行为。

在切换到 Yarn 后，如果你觉得 Yarn 并不适合你，那么你可以再次拥抱 `npm`，这将会非常容易，并不需要做什么特别的改动。如果团队中没有人使用 Yarn 了，就可以删除掉 `yarn.lock` 文件。

如果你正在使用 `npm-shrinkwrap.json` 文件，请注意，你最终可能会获得一组不同的依赖版本。Yarn 并不能直接支持 `npm-shrinkwrap.json` 文件，因为 `npm-shrinkwrap.json` 文件没有足够的信息来支撑 Yarn 更具确定性的算法。如果你正在使用 shrinkwrap 方案，可以很容易就让所有项目的参与者同时切换到 Yarn。只需删除现有的 `npm-shrinkwrap.json` 文件，并检入新建的 `yarn.lock` 文件即可。

### CLI 命令行对照 <a class="toc" id="toc-cli-commands-comparison" href="#toc-cli-commands-comparison"></a>

| npm                                         | Yarn                                        |
| ------------------------------------------- | ------------------------------------------- |
| `npm install`                               | `yarn install`                              |
| ***(N/A)***                                 | `yarn install --flat`                       |
| ***(N/A)***                                 | `yarn install --har`                        |
| ***(N/A)***                                 | `yarn install --no-lockfile`                |
| ***(N/A)***                                 | `yarn install --pure-lockfile`              |
| `npm install [package]`                     | ***(N/A)***                                 |
| `npm install --save [package]`              | `yarn add [package]`                        |
| `npm install --save-dev [package]`          | `yarn add [package] --dev`                  |
| ***(N/A)***                                 | `yarn add [package] --peer`                 |
| `npm install --save-optional [package]`     | `yarn add [package] --optional`             |
| `npm install --save-exact [package]`        | `yarn add [package] --exact`                |
| ***(N/A)***                                 | `yarn add [package] --tilde`                |
| `npm install --global [package]`            | `yarn global add [package]`                 |
| `npm uninstall [package]`                   | ***(N/A)***                                 |
| `npm uninstall --save [package]`            | `yarn remove [package]`                     |
| `npm uninstall --save-dev [package]`        | `yarn remove [package]`                     |
| `npm uninstall --save-optional [package]`   | `yarn remove [package]`                     |
| `rm -rf node_modules && npm install`        | `yarn upgrade`                    |
