// Copyright 2008 Simon Edwards <simon@simonzone.com>

//                 Generated by twine

// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU Library General Public License as
// published by the Free Software Foundation; either version 2, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details

// You should have received a copy of the GNU Library General Public
// License along with this program; if not, write to the
// Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.


namespace Plasma
{

class ComboBox : QGraphicsProxyWidget
{
%TypeHeaderCode
#include <plasma/widgets/combobox.h>
%End


public:
    explicit                ComboBox (QGraphicsWidget* parent /TransferThis/ = 0);
    QString                 text () const;
    void                    setStyleSheet (const QString& stylesheet);
    QString                 styleSheet ();
    KComboBox*              nativeWidget () const;
    void                    addItem (const QString& text);
    void                    clear ();

signals:
    void                    activated (const QString& text);

protected:
    void                    resizeEvent (QGraphicsSceneResizeEvent* event);
    void                    paint (QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget);
    void                    hoverEnterEvent (QGraphicsSceneHoverEvent* event);
    void                    hoverLeaveEvent (QGraphicsSceneHoverEvent* event);
public:
    ~ComboBox ();
signals:
    void                    textChanged (const QString& text);
public:
    void                    setNativeWidget (KComboBox* nativeWidget);
protected:
    void                    focusInEvent (QFocusEvent* event);
    void                    focusOutEvent (QFocusEvent* event);
    void                    changeEvent (QEvent* event);
    void                    mousePressEvent (QGraphicsSceneMouseEvent* event);
public:
    int                     count () const;
    int                     currentIndex () const;
    void                    setCurrentIndex (int index);
signals:
    void                    currentIndexChanged (int index);
};
// ComboBox

};
// Plasma


