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

## Customizing the button size

The button has no size setting of its own; it inherits the bar's standard icon
slot (`Style.bar.iconSlot` / `iconCanvas` / `iconFont`, 27 / 16 / 13 by
default), which is why it matches every other bar icon.

To make this one button bigger, edit `BarWidget.qml` and override the relevant
properties on the `BarIconButton`:

```qml
BarIconButton {
    slotSize: 34        // clickable / slot width
    opticalSize: 22     // icon canvas (keep >= fontSize)
    fontSize: 18        // glyph size -- this is what actually makes it bigger
}
```

`fontSize` drives the visual glyph size; `slotSize` sets the button's
clickable width; height stays locked to the bar height and centers
automatically. Changes reload on save; if they don't, force a reload with
`omarchy-shell shell rescanPlugins`.

## Preview

![System Menu Button](preview.png)

## License

MIT
