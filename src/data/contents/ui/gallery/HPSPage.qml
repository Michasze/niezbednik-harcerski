/*
 *  SPDX-FileCopyrightText: 2018 Aleix Pol Gonzalez <aleixpol@blue-systems.com>
 *
 *  SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick 2.1
import QtQuick.Controls 2.4 as QQC2
import QtQuick.Layouts 1.3
import org.kde.kirigami 2.6 as Kirigami

/**
 * An about page that is ready to integrate in a kirigami app
 *
 * Allows to have a page that will show the copyright notice of the application
 * together with the contributors and some information of which platform it's
 * running on.
 *
 * @since 5.52
 * @since org.kde.kirigami 2.6
 */
Kirigami.ScrollablePage
{
  id: base
  background: Rectangle {
              anchors.fill: parent
              color: invisibleCheckbox.checked ? "Black" : "grey"
    }

}
