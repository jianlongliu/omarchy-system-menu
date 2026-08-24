# System Menu Button

A single bar button that opens the Omarchy System menu in one click.

## What it does

Adds a power-icon button to the bar. Clicking it runs:

```sh
omarchy menu toggle system
```

that opens the Omarchy System menu page (Lock / Suspend / Logout / Reboot / Shutdown) directly, so you don't have to open the root menu and navigate to it.

## Install

```sh
omarchy plugin add https://github.com/jianlongliu/omarchy-system-menu.git --enable
```

## Uninstall

```sh
omarchy plugin remove omarchy-system-menu
```

## Usage

Click the power button in the bar. It toggles the Omarchy System menu.

## Preview

![System Menu Button](preview.png)

## License

MIT
