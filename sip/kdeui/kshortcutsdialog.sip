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




class KShortcutsDialog : KDialog
{
%TypeHeaderCode
#include <kshortcutsdialog.h>
%End


public:
    explicit                KShortcutsDialog (KShortcutsEditor::ActionTypes types = KShortcutsEditor::AllActions, KShortcutsEditor::LetterShortcuts allowLetterShortcuts = KShortcutsEditor::LetterShortcutsAllowed, QWidget* parent /TransferThis/ = 0);
    void                    addCollection (KActionCollection*, const QString& title = QString());
    QList<KActionCollection*>  actionCollections () const;
    bool                    configure (bool saveSettings = 1);
    virtual QSize           sizeHint () const;
    static int              configure (KActionCollection* collection, KShortcutsEditor::LetterShortcuts allowLetterShortcuts = KShortcutsEditor::LetterShortcutsAllowed, QWidget* parent /Transfer/ = 0, bool bSaveSettings = 1);

signals:
    void                    saved ();

private:
//force
                            KShortcutsDialog (const KShortcutsDialog&);
//end
public:
    ~KShortcutsDialog ();
};
// KShortcutsDialog


