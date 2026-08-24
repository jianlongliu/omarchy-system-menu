import QtQuick
import Quickshell
import qs.Ui

BarWidget {
    id: root
    moduleName: "omarchy-system-menu"

    implicitWidth: button.implicitWidth
    implicitHeight: button.implicitHeight

    BarIconButton {
        id: button
        anchors.fill: parent
        bar: root.bar
        text: "󰐥"
        fontSize: 20
        tooltipText: "System Menu"
        onPressed: function(buttonCode) {
            if (buttonCode === Qt.LeftButton) root.toggleSystemMenu()
        }
    }

    function toggleSystemMenu() {
        Quickshell.execDetached(["omarchy", "menu", "toggle", "system"])
    }
}
