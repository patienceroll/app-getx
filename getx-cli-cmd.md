

```markdown
# Get CLI 使用指南

## 安装

### 全局激活 `get_cli`：
```bash
pub global activate get_cli
```
- 使用本命令需要设置系统环境变量：
  ```
  [FlutterSDK安装目录]\bin\cache\dart-sdk\bin
  ```
  和
  ```
  [FlutterSDK安装目录]\.pub-cache\bin
  ```

### 在 Flutter 项目中激活 `get_cli`：
```bash
flutter pub global activate get_cli
```

---

## 项目创建

### 在当前目录创建一个 Flutter 项目：
```bash
get create project
```
- 默认使用文件夹名称作为项目名称。
- 你可以使用以下命令给项目命名：
  ```bash
  get create project:my_project
  ```
- 如果项目名称有空格，使用：
  ```bash
  get create project:"my cool project"
  ```

### 在现有项目中生成所选结构：
```bash
get init
```

---

## 页面和屏幕创建

### 创建页面：
```bash
get create page:home
```
- 页面包括 `controller`、`view` 和 `binding`。
- 你可以随便命名，例如：
  ```bash
  get create page:login
  ```
- 注：选择了 `Getx_pattern` 结构才用这个选项。

### 创建屏幕：
```bash
get create screen:home
```
- 屏幕包括 `controller`、`view` 和 `binding`。
- 你可以随便命名，例如：
  ```bash
  get create screen:login
  ```
- 注：选择了 `CLEAN` 结构才用这个选项（by Arktekko）。

---

## 控制器、视图和提供者创建

### 在指定文件夹创建新控制器：
```bash
get create controller:dialogcontroller on home
```
- 你无需引用文件夹，GetX 会自动搜索 `home` 目录，并把你的控制器放在那儿。

### 在指定文件夹创建新视图：
```bash
get create view:dialogview on home
```
- 你无需引用文件夹，GetX 会自动搜索 `home` 目录，并把你的视图放在那儿。

### 在指定文件夹创建新提供者：
```bash
get create provider:user on home
```

---

## 国际化与模型生成

### 生成国际化文件：
```bash
get generate locales assets/locales
```
- 注：`assets/locales` 目录下的翻译文件应该是 JSON 格式的。

### 生成模型类：
```bash
get generate model on home with assets/models/user.json
```
- 注：`assets/models/` 目录下的模板文件应该是 JSON 格式的。
- 注：`on` 参数指定输出文件夹。GetX 会自动搜索 `home` 目录，并把你的模型放在那儿。

### 生成无提供者的模型：
```bash
get generate model on home with assets/models/user.json --skipProvider
```

### 从 URL 生成模型：
```bash
get generate model on home from "https://api.github.com/users/CpdnCristiano"
```
- 注：URL 必须返回 JSON 格式的数据。

---

## 依赖管理

### 为你的项目安装依赖：
```bash
get install camera
```

### 为你的项目安装多个依赖：
```bash
get install http path camera
```

### 为你的项目安装指定版本的依赖：
```bash
get install path:1.6.4
```
- 你可以为多个依赖指定版本号。

### 为你的项目安装开发依赖（`dev_dependencies`）：
```bash
get install flutter_launcher_icons --dev
```

### 为你的项目移除一个依赖：
```bash
get remove http
```

### 为你的项目移除多个依赖：
```bash
get remove http path
```

---

## CLI 管理

### 更新 CLI：
```bash
get update
```
- 或：
  ```bash
  get upgrade
  ```

### 显示当前 CLI 版本：
```bash
get -v
```
- 或：
  ```bash
  get -version
  ```

### 获取帮助：
```bash
get help
```
```

