---
id: docs_publishing_a_package
guide: docs_creating_a_package
layout: guide
---

想要通过 Yarn 和来自全世界的开发者分享你的包，第一步就是发布它。

您通过 Yarn 发布的包将存放在
[npm 仓库](https://www.npmjs.com/)，它会向全世界分发你的包。

### 登陆到 npm <a class="toc" id="toc-logging-into-npm" href="#toc-logging-into-npm"></a>

如果您还没有 npm 账户，请先
[注册一个 npm 账户](https://www.npmjs.com/signup)。
当您完成注册后，您能在 Yarn 中设置您的用户名和邮箱。

```sh
yarn login
```

它会提示您即时输入用户名和邮箱。不过，它不会询问您的密码。
Yarn 在任何情形下都不会拥有您的密码。
所以当您发布或者修改 npm 上的某些文件时，你需要手动输入您的密码。

### 发布您的包 <a class="toc" id="toc-publishing-your-package" href="#toc-publishing-your-package"></a>

当您完成了您的包中的所有代码，测试其通过并且准备发布时，您可以按下面的方法做：

```sh
yarn publish
```

首先，你会被要求输入一个新的版本号用于发布：

```
[1/4] Bumping version...
info Current version: 1.0.0
question New version: _____
```

然后，你会被要求输入您的 npm 账户密码：

```
[2/4] Logging in...
info npm username: your-npm-username
info npm username: you@example.com
question npm password: ____________
```

最后，Yarn 会发布这个包，并且撤销您的会话令牌。

```
[3/4] Publishing...
success Published.
[4/4] Revoking token...
success Revoked login token.
✨  Done in 10.53s.
```

无论何时，当您想要发布一个新的版本时，您同样可以通过该流程来实现。

### 获取您的包 <a class="toc" id="toc-accessing-your-package" href="#toc-accessing-your-package"></a>

您的包可以通过浏览器访问 https://www.npmjs.com/package/my-new-project 来获取，
并且可以通过命令来安装它：

```sh
yarn add my-new-project
```

您也可以查看它在 npm 仓库中的详细信息：

```sh
yarn info my-new-project
```

```js
{ name: 'my-new-project',
  description: 'My New Project description.',
  'dist-tags': { latest: '1.0.0' },
  versions: [ '1.0.0' ],
  maintainers: [ { name: 'Your Name', email: 'you@example.com' } ],
  time:
  { modified: '{{ site.time | date_to_xmlschema }}',
    created: '{{ site.time | date_to_xmlschema }}',
    '1.0.0': '{{ site.time | date_to_xmlschema }}' },
  homepage: 'https://my-new-project-website.com/',
  keywords: [ 'cool', 'useful', 'stuff' ],
  repository:
   { url: 'https://example.com/your-username/my-new-project',
     type: 'git' },
  contributors:
   [ { name: 'Your Friend',
       email: 'their-email@example.com',
       url: 'http://their-website.com' },
     { name: 'Another Friend',
       email: 'another-email@example.com',
       url: 'https://another-website.org' } ],
  author: { name: 'Your Name', email: 'you@example.com' },
  bugs: { url: 'https://github.com/you/my-new-project/issues' },
  license: 'MIT',
  readmeFilename: 'README.md',
  version: '1.0.0',
  main: 'index.js',
  files: [ 'index.js', 'lib/*.js', 'bin/*.js' ],
  bin: { 'my-new-project-cli': 'bin/my-new-project-cli.js' },
  dist:
   { shasum: '908bc9a06fa4421e96ceda243c1ee1789b0dc763',
     tarball: 'https://registry.npmjs.org/my-new-project/-/my-new-project-1.0.0.tgz' },
  directories: {} }
```
