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


class KXmlGuiWindow : KMainWindow, KXMLGUIBuilder, KXMLGUIClient
{
%TypeHeaderCode
#include <kxmlguiwindow.h>
%End


public:
    explicit                KXmlGuiWindow (QWidget* parent /TransferThis/ = 0, Qt::WindowFlags f = 0);
    void                    setHelpMenuEnabled (bool showHelpMenu = 1);
    bool                    isHelpMenuEnabled () const;
    virtual KXMLGUIFactory*  guiFactory ();
    void                    createGUI (const QString& xmlfile = QString());
    void                    setStandardToolBarMenuEnabled (bool enable);
    bool                    isStandardToolBarMenuEnabled () const;
    void                    createStandardStatusBarAction ();

    enum StandardWindowOption
    {
        ToolBar,
        Keys,
        StatusBar,
        Save,
        Create,
        Default
    };

    typedef QFlags<KXmlGuiWindow::StandardWindowOption> StandardWindowOptions;

    void                    setupGUI (KXmlGuiWindow::StandardWindowOptions options = KXmlGuiWindow::Default, const QString& xmlfile = QString());
    void                    setupGUI (const QSize& defaultSize, KXmlGuiWindow::StandardWindowOptions options = KXmlGuiWindow::Default, const QString& xmlfile = QString());
    QAction*                toolBarMenuAction ();
    void                    setupToolbarMenuActions ();
    virtual void            finalizeGUI (KXMLGUIClient* client);
    void                    finalizeGUI (bool force);
    virtual void            applyMainWindowSettings (const KConfigGroup& config, bool force = 0);
    virtual void            configureToolbars ();
    virtual void            slotStateChanged (const QString& newstate);
    void                    slotStateChanged (const QString& newstate, bool reverse);

protected:
    virtual bool            event (QEvent* event);
    virtual void            saveNewToolbarConfig ();
public:
    ~KXmlGuiWindow ();
};
// KXmlGuiWindow


