# QtBuildTool
QtBuildTool is a simple bash script that automates the build process for Qt projects by generating the ```compile_commands.json``` file using ```compiledb```. This file is useful for code editors and static analysis tools to understand the project's compilation commands and dependencies.

## Getting Started
### Prerequisites

```
Qt (qmake, make)
compiledb (install using Homebrew: brew install compiledb)
```

### How to Use
```
$ git clone https://github.com/yourusername/QtBuildTool.git
$ cd QtBuildTool
$ chmod +x qtb.sh
$ ./qtb.sh project.pro
```

## Create alias
####   Add the alias for the script to your shell profile (e.g., ~/.zshrc or ~/.bashrc):

```
alias qtb="~/QtBuildTool/qtb.sh" --> replace with your  path
```