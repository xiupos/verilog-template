Verilog Template for VS Code Remote Development
===

Verilog template which is easy to develop,
using VS Code Remote Development.

It uses [Icarus Verilog](http://iverilog.icarus.com/)
and [GTKWave](http://gtkwave.sourceforge.net/).

## Requirement

- `docker`(18.06+), `doccker-compose`(1.21+)

- VSCode

  - [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

  - [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

If you want to use gtkwave,
you need the [X Window System](http://www.opengroup.org/desktop/x/).

## Usage

Press `F1` in VS Code
and select **Remote-Containers: Reopen in Container**.

### Build

Press `F1` > Select **Tasks: Run Task** > Select **build**, or

```
# Ctrl + Shiht + 0
make build
```

### Run

Press `F1` > Select **Tasks: Run Task** > Select **run**, or

```
# Ctrl + Shiht + 0
make run
```

### Run on GTKWave

**You need the [X Window System](http://www.opengroup.org/desktop/x/).**

Press `F1` > Select **Tasks: Run Task** > Select **wave**, or

```
# Ctrl + Shiht + 0
make wave
```

### LICENCE

**NO LICENCE**

You have to check licences of
[Icarus Verilog](http://iverilog.icarus.com/)
and [GTKWave](http://gtkwave.sourceforge.net/).
