---
id: docs_configuration_package_json
guide: docs_configuration
layout: guide
---

## 必要字段 <a class="toc" id="toc-essentials" href="#toc-essentials"></a>

在您的 `package.json` 文件中，最重要的两个字段是 `name` 和 `version`，
没有它们，您的包将不能够被安装。`name` 和 `version`
字段被一起作用与创建唯一 ID。

### `name` <a class="toc" id="toc-name" href="#toc-name"></a>

```json
{
  "name": "my-awesome-package"
}
```

这是您的包的名称。他被用于 URLs、命令行参数以及 `node_modules` 目录下模块的子目录名称。

```sh
yarn add [name]
```

```
node_modules/[name]
```

```
https://registry.npmjs.org/[name]/-/[name]-[version].tgz
```

**规则**

- 必须小于或者等于 214 个字符（包括了被包含的包中的 `@scope/`）。
- 不可以以点（`.`）或者下划线（`_`）为起始字符。
- 名称中不能有大写字母。
- 只能使用 URL-safe 字符。

**提示**

- 不要和 Node.js 核心模块使用一样的名称。
- 不要在名称中加入 `js` 或者 `node`。
- 保持名称简短且易于描述。您可能希望别人能从包名中理解包的功能，但它同时也要被 `require()` 调用。
- 确保[仓库](https://www.npmjs.com/)中没有同名的包。

### `version` <a class="toc" id="toc-version" href="#toc-version"></a>

```json
{
  "version": "1.0.0"
}
```
您的包的当前版本号。

## 详细信息 <a class="toc" id="toc-info" href="#toc-info"></a>

### `description` <a class="toc" id="toc-description" href="#toc-description"></a>

```json
{
  "description": "My short description of my awesome package"
}
```

描述字段是一个单纯的字符串，它让别人能够明白您的包的功能。
它也能够在别人通过包管理器搜索包的时候被使用到。

### `keywords` <a class="toc" id="toc-keywords" href="#toc-keywords"></a>

```json
{
  "keywords": ["short", "relevant", "keywords", "for", "searching"]
}
```

关键字字段是一个字符串数组，在包管理器中搜索包时，它非常的有用。

### `license` <a class="toc" id="toc-license" href="#toc-license"></a>

```json
{
  "license": "MIT",
  "license": "(MIT or GPL-3.0)",
  "license": "SEE LICENSE IN LICENSE_FILENAME.txt",
  "license": "UNLICENSED"
}
```

所有的包都应该具体给出许可字段，只有这样用户才可以知道他们被许可哪些操作，以及避免您规定的限制。

推荐您使用开源的
([OSI-approved](https://opensource.org/licenses/alphabetical)) 许可协议，
除非您有特别的理由不使用它。
如果您建立的包是用于您的工作，在您决定使用的许可协议前，您最好向您的公司进行询问。

**必须是以下其中的一种：**

- 一个有效的 [SPDX 许可标识](https://spdx.org/licenses/)（如果您使用一个标准协议的话）。
- 一个有效的
  [SPDX 许可表达式语法 2.0 的表达式](https://www.npmjs.com/package/spdx)（如果您使用的是混合标准协议的话）。
- 一个 `SEE LICENSE IN <filename>` 字符串，它指向您的包的顶级目录下的 `<filename>`
（如果您要使用一个非标准协议的话）。
- 一个 `UNLICENSED` 字符串（如果您不想准许任何人有权限使用您的包或者不发布您的包在任何条款下）。

## 链接 <a class="toc" id="toc-links" href="#toc-links"></a>

各种链接，比如文档的链接、存放文件问题的链接以及包的代码存放的确切位置的链接。

### `homepage` <a class="toc" id="toc-homepage" href="#toc-homepage"></a>

```json
{
  "homepage": "https://your-package.org"
}
```

主页字段是一个 URL，用于链接到您的包的主页或者文档。

### `bugs` <a class="toc" id="toc-bugs" href="#toc-bugs"></a>

```json
{
  "bugs": "https://github.com/user/repo/issues"
}
```

一个用于项目问题追踪的链接。他也可以是其他的东西，比如说一个电子邮箱。
它提供用户一个向您的包提交错误报告的途径。

### `repository` <a class="toc" id="toc-repository" href="#toc-repository"></a>

```json
{
  "repository": { "type": "git", "url": "https://github.com/user/repo.git" },
  "repository": "github:user/repo",
  "repository": "gitlab:user/repo",
  "repository": "bitbucket:user/repo",
  "repository": "gist:a1b2c3d4e5f"
}
```

仓库字段是您的实际代码所在位置。

## 维护者 <a class="toc" id="toc-maintainers" href="#toc-maintainers"></a>

您的包的项目维护者。

### `author` <a class="toc" id="toc-author" href="#toc-author"></a>

```json
{
  "author": { "name": "Your Name", "email": "you@example.com", "url": "http://your-website.com" },
  "author": "Your Name <you@example.com> (http://your-website.com)"
}
```

包作者的信息。作者必须是一个人。

### `contributors` <a class="toc" id="toc-contributors" href="#toc-contributors"></a>

```json
{
  "contributors": [
    { "name": "Your Friend", "email": "friend@example.com", "url": "http://friends-website.com" }
    { "name": "Other Friend", "email": "other@example.com", "url": "http://other-website.com" }
  ],
  "contributors": [
    "Your Friend <friend@example.com> (http://friends-website.com)",
    "Other Friend <other@example.com> (http://other-website.com)"
  ]
}
```

哪些为您的包提交贡献的人。贡献者字段是一个数组。

## 文件 <a class="toc" id="toc-files" href="#toc-files"></a>

您可以指定那些将包含在您的项目中的文件，以及您的项目的主要入口点。

### `files` <a class="toc" id="toc-files" href="#toc-files"></a>

```json
{
  "files": [
    "filename.js",
    "directory/",
    "glob/*.{js,json}"
  ]
}
```

这些文件将会包含在您的项目中。
您可以指定单独的文件、整个目录或是使用通配符来包括符合要求的文件。

### `main` <a class="toc" id="toc-main" href="#toc-main"></a>

```json
{
  "main": "filename.js"
}
```

这是您的项目的功能的主要入口点。

### `bin` <a class="toc" id="toc-bin" href="#toc-bin"></a>

```json
{
  "bin": "bin.js",
  "bin": {
    "command-name": "bin/command-name.js",
    "other-command": "bin/other-command"
  }
}
```

您项目中包含的可执行文件将会被安装。

### `man` <a class="toc" id="toc-man" href="#toc-man"></a>

```json
{
  "man": "./man/doc.1",
  "man": ["./man/doc.1", "./man/doc.2"]
}
```

如果您有操作说明页面要和项目练习起来，把它们放在这里。

### `directories` <a class="toc" id="toc-directories" href="#toc-directories"></a>

```json
{
  "directories": {
    "lib": "path/to/lib/",
    "bin": "path/to/bin/",
    "man": "path/to/man/",
    "doc": "path/to/doc/",
    "example": "path/to/example/"
  }
}
```

当安装您的包时，您可以指定特定的位置存放二进制文件，操作说明页面，文档，示例代码等等。

## 任务 <a class="toc" id="toc-tasks" href="#toc-tasks"></a>

您的包可以包含可运行脚本或者其他的配置。

### `scripts` <a class="toc" id="toc-scripts" href="#toc-scripts"></a>

```json
{
  "scripts": {
    "build-project": "node build-project.js"
  }
}
```

脚本字段对您的包来说是一个自动化任务的好途径，比如简单的构建过程或者开发工具。
使用 `"scripts"` 字段，您能定义非常多的脚本，并且用 `yarn run <script>` 来运行。
举个例子，上面的 `build-project` 脚本能够通过 `yarn run build-project` 唤起，
并执行 `node build-project.js`。

某些脚本的名称非常的特殊。如果已定义，`preinstall` 脚本会在您的包安装前被 Yarn 调用。
出于兼容性的问题，命名为 `install`、`postinstall` 和 `prepublish` 的脚本将会在您的包完成
安装后调用。

### `config` <a class="toc" id="toc-config" href="#toc-config"></a>

```json
{
  "config": {
    "port": "8080"
  }
}
```

您在包中使用的配置选项和参数。

## 依赖包 <a class="toc" id="toc-dependencies" href="#toc-dependencies"></a>

您的包极有可能依赖于其他的包。您可以在 `package.json` 文件中指定那些被依赖的包。

### `dependencies` <a class="toc" id="toc-dependencies" href="#toc-dependencies"></a>

```json
{
  "dependencies": {
    "package-1": "^3.1.4"
  }
}
```

这些依赖包将会同时被开发环境和生产环境所需要。

> 您可以指定特定的版本号，最小版本号（示例，`>=`）或者一个版本号的范围（示例，`>= ... <`）。

### `devDependencies` <a class="toc" id="toc-devdependencies" href="#toc-devdependencies"></a>

```json
{
  "devDependencies": {
    "package-2": "^0.4.2"
  }
}
```

这些包仅在开发您的包的时候被需要，他们不会安装在生产环境下。

### `peerDependencies` <a class="toc" id="toc-peerdependencies" href="#toc-peerdependencies"></a>

```json
{
  "peerDependencies": {
    "package-3": "^2.7.18"
  }
}
```

对等的依赖关系允许您将包的版本与其他包的版本兼容。

### `optionalDependencies` <a class="toc" id="toc-optionaldependencies" href="#toc-optionaldependencies"></a>

```json
{
  "optionalDependencies": {
    "package-5": "^1.6.1"
  }
}
```

可选的依赖包可以与您的包一起使用，但不是必须。如果未找到可选包，安装仍将继续。

### `bundledDependencies` <a class="toc" id="toc-bundleddependencies" href="#toc-bundleddependencies"></a>

```json
{
  "bundledDependencies": [
    "package-4"
  ]
}
```

捆绑依赖包字段是一个包名数组，当您发布您的包时，它们将与您的包捆绑在一起。

### `flat` <a class="toc" id="toc-flat" href="#toc-flat"></a>

```json
{
  "flat": true
}
```

如果您的包只允许一个给定版本的依赖，而且您希望安装行为强制与 [`yarn install --flat`]({{url_base}}/docs/cli/install#toc-yarn-install-flat)命令保持一致，请将该字段设置为 `true`。

注意，如果您的 `package.json` 包含 `"flat": true` 并且别的包依赖于您的包（比如说，您构建的是一个库而不是一个应用）, 那么，这些包同样需要 `"flat": true` 在它们的 `package.json` 文件中，或者通过 `yarn install --flat` 指令来安装。

## 系统 <a class="toc" id="toc-system" href="#toc-system"></a>

您能给您的包提供系统级的信息，比如操作系统兼容性，等。

### `engines` <a class="toc" id="toc-engines" href="#toc-engines"></a>

```json
{
  "engines": {
    "node": ">=4.4.7 <7.0.0",
    "zlib": "^1.2.8",
    "yarn": "^0.14.0"
  }
}
```

引擎字段指定了使用您的包所必须的客户端的版本号。它会检查 `process.versions` 对象，以及 Yarn 当前版本。

### `os` <a class="toc" id="toc-os" href="#toc-os"></a>

```json
{
  "os": ["darwin", "linux"],
  "os": ["!win32"]
}
```

该字段指定您的包的操作系统的兼容性。它会检查 `process.platform` 对象。

### `cpu` <a class="toc" id="toc-cpu" href="#toc-cpu"></a>

```json
{
  "cpu": ["x64", "ia32"],
  "cpu": ["!arm", "!mips"]
}
```

使用该字段指定您的包仅在特定结构的 CPU 上运行。它会检查 `process.arch` 对象。

## 发布 <a class="toc" id="toc-publishing" href="#toc-publishing"></a>

### `private` <a class="toc" id="toc-private" href="#toc-private"></a>

```json
{
  "private": true
}
```

如果您不希望您的包被发布到包管理器，请设置该字段为 `true`。

### `publishConfig` <a class="toc" id="toc-publishconfig" href="#toc-publishconfig"></a>

```json
{
  "publishConfig": {
    ...
  }
}
```

这些配置选项将在您发布包的时候使用。比如说，您能给您的包添加一个标签。
