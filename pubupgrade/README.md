# pubupgrade

## 项目概述

`pubupgrade` 主要用于检查并升级项目中 `pubspec.yaml` 文件里的依赖项版本。

## 功能特性

- **自动检查**：该应用程序会自动检查 `pubspec.yaml` 文件中以 `^` 开头的依赖项版本。
- **版本更新**：如果发现有依赖项有新版本可用，会将其版本号更新到最新版本。
- **日志输出**：在检查和更新过程中，会输出详细的日志信息，让你清楚知道哪些依赖项可以升级。

## 安装

### 前提条件

- 确保你已经安装了 Dart SDK，版本要求为 `^3.7.0` 或更高。

### 克隆项目

首先，克隆这个项目到你的本地机器：

```bash
git clone https://github.com/iptodays/dart-cli/tree/master/pubupgrade
cd pubupgrade
```

### 编译项目

使用以下命令编译项目：

```bash
dart compile exe ./bin/pubupgrade.dart
```

编译成功后，会在项目目录下生成一个可执行文件。

## 使用方法

编译完成后，你可以直接运行生成的可执行文件：

```bash
./pubupgrade
```

运行后，应用程序会自动检查当前目录下的 `pubspec.yaml` 文件，并输出相关信息。如果有依赖项可以升级，会在控制台输出相应的提示信息，并更新 `pubspec.yaml` 文件。

## 贡献指南

如果你发现了任何问题或者有改进的建议，欢迎提交 Issue 或者 Pull Request。

## 许可证

``` MIT License
MIT License

Copyright (c) 2025 A

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```