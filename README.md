````markdown
# README.md

## Installation

### Activate `get_cli` globally:

```bash
pub global activate get_cli
```
````

- To use this, add the following to your system PATH:
  ```
  [FlutterSDKInstallDir]\bin\cache\dart-sdk\bin
  ```

### Activate `get_cli` in your Flutter project:

```bash
flutter pub global activate get_cli
```

---

## Project Creation

### Create a Flutter project in the current directory:

```bash
get create project
```

- By default, it will take the folder's name as the project name.
- You can name the project explicitly:
  ```bash
  get create project:my_project
  ```
- If the name has spaces, use:
  ```bash
  get create project:"my cool project"
  ```

### Generate the chosen structure on an existing project:

```bash
get init
```

---

## Page and Screen Creation

### Create a page:

```bash
get create page:home
```

- Pages include a controller, view, and binding.
- You can use any name, e.g., `get create page:login`.
- Use this option if the chosen structure is `Getx_pattern`.

### Create a screen:

```bash
get create screen:home
```

- Screens include a controller, view, and binding.
- You can use any name, e.g., `get screen page:login`.
- Use this option if the chosen structure is `CLEAN` (by Arktekko).

---

## Controller, View, and Provider Creation

### Create a new controller in a specific folder:

```bash
get create controller:dialogcontroller on home
```

- You don’t need to reference the folder explicitly. GetX will automatically search for the `home` folder and add your controller there.

### Create a new view in a specific folder:

```bash
get create view:dialogview on home
```

- You don’t need to reference the folder explicitly. GetX will automatically search for the `home` folder and insert your view there.

### Create a new provider in a specific folder:

```bash
get create provider:user on home
```

---

## Localization and Model Generation

### Generate a localization file:

```bash
get generate locales assets/locales
```

- Ensure the `assets/locales` directory contains your translation files in JSON format.

### Generate a class model:

```bash
get generate model on home with assets/models/user.json
```

- The `assets/models/user.json` is the path to your template file in JSON format.
- The `on` parameter specifies the output folder. GetX will automatically search for the `home` folder and insert your class model there.

### Generate the model without the provider:

```bash
get generate model on home with assets/models/user.json --skipProvider
```

### Generate a model from a URL:

```bash
get generate model on home from "https://api.github.com/users/CpdnCristiano"
```

- The URL must return data in JSON format.

---

## Package Management

### Install a package in your project (dependencies):

```bash
get install camera
```

### Install several packages in your project:

```bash
get install http path camera
```

### Install a package with a specific version:

```bash
get install path:1.6.4
```

- You can also specify multiple packages with version numbers.

### Install a dev package in your project (dev_dependencies):

```bash
get install flutter_launcher_icons --dev
```

### Remove a package from your project:

```bash
get remove http
```

### Remove several packages from your project:

```bash
get remove http path
```

---

## CLI Management

### Update the CLI:

```bash
get update
```

- Alternatively:
  ```bash
  get upgrade
  ```

### Show the current CLI version:

```bash
get -v
```

- Alternatively:
  ```bash
  get -version
  ```

### Get help:

```bash
get help
```

```

---

```
