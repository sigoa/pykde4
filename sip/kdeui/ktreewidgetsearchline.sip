//
//     Copyright 2008 Jim Bublitz <jbublitz@nwinternet.com>
//     Earlier copyrights 1998 - 2007 Jim Bublitz also apply

//                 Generated by twine

// This file is part of PyKDE4.

// PyKDE4 is free software; you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as
// published by the Free Software Foundation; either version 2.1 of
// the License, or (at your option) any later version.

// PyKDE4 is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.


class KTreeWidgetSearchLine : KLineEdit
{
%TypeHeaderCode
#include <ktreewidgetsearchline.h>
%End


public:
    explicit                KTreeWidgetSearchLine (QWidget* parent /TransferThis/ = 0, QTreeWidget* treeWidget = 0);
                            KTreeWidgetSearchLine (QWidget* parent /TransferThis/, const QList<QTreeWidget*>& treeWidgets);
    Qt::CaseSensitivity     caseSensitivity () const;
    QList<int>              searchColumns () const;
    bool                    keepParentsVisible () const;
    QTreeWidget*            treeWidget () const;
    QList<QTreeWidget*>     treeWidgets () const;

signals:
    void                    hiddenChanged (QTreeWidgetItem*, bool);

public:
    void                    addTreeWidget (QTreeWidget* treeWidget);
    void                    removeTreeWidget (QTreeWidget* treeWidget);
    virtual void            updateSearch (const QString& pattern = QString());
    void                    setCaseSensitivity (Qt::CaseSensitivity caseSensitivity);
    void                    setKeepParentsVisible (bool value);
    void                    setSearchColumns (const QList<int>& columns);
    void                    setTreeWidget (QTreeWidget* treeWidget);
    void                    setTreeWidgets (const QList<QTreeWidget*>& treeWidgets);

protected:
    virtual bool            itemMatches (const QTreeWidgetItem* item, const QString& pattern) const;
    virtual void            contextMenuEvent (QContextMenuEvent*);
    virtual void            updateSearch (QTreeWidget* treeWidget);
    virtual void            connectTreeWidget (QTreeWidget*);
    virtual void            disconnectTreeWidget (QTreeWidget*);
    virtual bool            canChooseColumnsCheck ();
    virtual bool            event (QEvent* event);
public:
    ~KTreeWidgetSearchLine ();
};
// KTreeWidgetSearchLine


class KTreeWidgetSearchLineWidget : QWidget
{
%TypeHeaderCode
#include <ktreewidgetsearchline.h>
%End


public:
    explicit                KTreeWidgetSearchLineWidget (QWidget* parent /TransferThis/ = 0, QTreeWidget* treeWidget = 0);
    KTreeWidgetSearchLine*  searchLine () const;

protected:
    virtual void            createWidgets ();
    virtual KTreeWidgetSearchLine*  createSearchLine (QTreeWidget* treeWidget) const;
public:
    ~KTreeWidgetSearchLineWidget ();
};
// KTreeWidgetSearchLineWidget


