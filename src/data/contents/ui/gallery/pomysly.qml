/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import Filter 1.0

HPSPage
{
    id: page
    property string pion: ""
    property string wykluczenie: ""
    title: qsTr("Pomysły na zbiórki")
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            HPSFilter {
                id: filteredModel
                sourceModel: hpsModel
                filterRole: "category"
                filterRegularExpression: RegExp("%1".arg("symbolika"), "i")
            }
            ListModel {
                id: metodyki
                ListElement { nazwa: "Ogólne"; image: "qrc:/contents/ui/img/harcerze.svg" }
                ListElement { nazwa: "Harcerze"; image: "qrc:/contents/ui/img/harcerze.svg"; exclude: " - harcerze starsi" }
                ListElement { nazwa: "Harcerze starsi"; image: "qrc:/contents/ui/img/hs.svg" }
                ListElement { nazwa: "Wędrownicy"; image: "qrc:/contents/ui/img/wedrownicy.svg" }
            }
            Repeater {
                model: metodyki
                delegate: ElementListyImageNoLayout {
                    header: model.nazwa
                    ikona: model.image
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            pion = header
                            wykluczenie = exclude ? exclude : ""
                            pageStack.push(podstrona)
                        }
                    }
                }
            }
        }
    Component {
	id: podstrona
	HPSPage {
	    title: "Pomysły - " + pion
	    Controls.Pane {
		Column {
		    anchors.fill: parent
		    spacing: 10
		    HPSFilter {
			id: filteredModel
			sourceModel: hpsModel
			filterRole: "category"
			filterRegularExpression: RegExp("%1".arg("pomysły na zbiórki - " + pion), "i")
			exclusion: wykluczenie
		    }
		    Repeater {
			model: filteredModel
			delegate: KartaStronaNoLayout {
			    header: model.header
			    ikona: model.image
			    opis: model.description
			    MouseArea {
				anchors.fill: parent
				onClicked: pageStack.push(Qt.resolvedUrl(model.address))
			    }
			}
		    }
		}
	    }
	}
    }
    }
}
