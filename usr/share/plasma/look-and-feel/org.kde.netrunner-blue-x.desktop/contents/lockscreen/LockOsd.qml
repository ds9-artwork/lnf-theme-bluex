/********************************************************************
 This file is part of the KDE project.

Copyright (C) 2014 Aleix Pol Gonzalez <aleixpol@blue-systems.com>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*********************************************************************/

import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import "../osd"

PlasmaCore.FrameSvgItem {
    id: osd

    // OSD Timeout in msecs - how long it will stay on the screen
    property int timeout: 1800
    // This is either a text or a number, if showingProgress is set to true,
    // the number will be used as a value for the progress bar
    property var osdValue
    // Icon name to display
    property string icon
    // Set to true if the value is meant for progress bar,
    // false for displaying the value as normal text
    property bool showingProgress: false

    objectName: "onScreenDisplay"
    visible: false
    width: osdItem.width + margins.left + margins.right
    height: osdItem.height + margins.top + margins.bottom
    imagePath: "widgets/background"

    function show() {
        osd.visible = true;
        hideTimer.restart();
    }

    OsdItem {
        id: osdItem
        rootItem: osd

        anchors.centerIn: parent
    }

    Timer {
        id: hideTimer
        interval: osd.timeout
        onTriggered: {
            osd.visible = false;
            osd.icon = "";
            osd.osdValue = 0;
        }
    }
}
