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


class KPageDialog : KDialog
{
%TypeHeaderCode
#include <kpagedialog.h>
%End



public:
    enum FaceType
    {
        Auto,
        Plain,
        List,
        Tree,
        Tabbed
    };

    explicit                KPageDialog (QWidget* parent /TransferThis/ = 0, Qt::WFlags flags = 0);
    void                    setFaceType (KPageDialog::FaceType faceType);
    KPageWidgetItem*        addPage (QWidget* widget, const QString& name);
    void                    addPage (KPageWidgetItem* item);
    KPageWidgetItem*        insertPage (KPageWidgetItem* before, QWidget* widget, const QString& name);
    void                    insertPage (KPageWidgetItem* before, KPageWidgetItem* item);
    KPageWidgetItem*        addSubPage (KPageWidgetItem* parent /Transfer/, QWidget* widget, const QString& name);
    void                    addSubPage (KPageWidgetItem* parent /Transfer/, KPageWidgetItem* item);
    void                    removePage (KPageWidgetItem* item);
    void                    setCurrentPage (KPageWidgetItem* item);
    KPageWidgetItem*        currentPage () const;

signals:
    void                    currentPageChanged (KPageWidgetItem* current, KPageWidgetItem* before);
    void                    pageRemoved (KPageWidgetItem* page);

protected:
                            KPageDialog (KPageWidget* widget, QWidget* parent /TransferThis/, Qt::WFlags flags = 0);
//ig                            KPageDialog (KPageDialogPrivate& dd, KPageWidget* widget, QWidget* parent /TransferThis/, Qt::WFlags flags = 0);
    KPageWidget*            pageWidget ();
//ig    const KPageWidget*      pageWidget () const;
public:
    ~KPageDialog ();
protected:
    void                    setPageWidget (KPageWidget* widget);
};
// KPageDialog


