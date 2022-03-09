/*
 *  SPDX-FileCopyrightText: 2018 Aleix Pol Gonzalez <aleixpol@blue-systems.com>
 *
 *  SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick 2.1
import org.kde.kirigami 2.6 as Kirigami

Kirigami.ScrollablePage {
  id: base
  background: Rectangle {
    anchors.fill: parent
    color: invisibleCheckbox.checked ? "Black" : "grey"
  }
}
