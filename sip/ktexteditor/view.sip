//
//     Copyright 2007 Jim Bublitz <jbublitz@nwinternet.com>
//     Earlier copyrights 1998 - 2006 Jim Bublitz also apply


//                 Generated by preSip


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

namespace KTextEditor
{

class View : QWidget, KXMLGUIClient /Abstract/
{
%TypeHeaderCode
#include <ktexteditor/view.h>

#include <ktexteditor/codecompletioninterface.h>
#include <ktexteditor/sessionconfiginterface.h>
#include <ktexteditor/texthintinterface.h>
#include <ktexteditor/annotationinterface.h>
#include <ktexteditor/configinterface.h>
#include <ktexteditor/templateinterface.h>
#include <ktexteditor/templateinterface2.h>
%End


public:
                            View (QWidget* parent /TransferThis/);

    virtual KTextEditor::Document*  document () const=0;
    bool                    isActiveView () const;

    virtual QString         viewMode () const=0;

    enum EditMode
    {
        EditInsert,
        EditOverwrite
    };

    virtual KTextEditor::View::EditMode  viewEditMode () const=0;

signals:
    void                    focusIn (KTextEditor::View* view);
    void                    focusOut (KTextEditor::View* view);
    void                    viewModeChanged (KTextEditor::View* view);
    void                    viewEditModeChanged (KTextEditor::View* view, KTextEditor::View::EditMode mode);
    void                    informationMessage (KTextEditor::View* view, const QString& message);
    void                    textInserted (KTextEditor::View* view, const KTextEditor::Cursor& position, const QString& text);

public:
    virtual void            setContextMenu (QMenu* menu)=0;
    virtual QMenu*          contextMenu () const=0;
    virtual QMenu*          defaultContextMenu (QMenu* menu = 0) const=0;

signals:
    void                    contextMenuAboutToShow (KTextEditor::View* view, QMenu* menu);

public:
    virtual bool            setCursorPosition (KTextEditor::Cursor position)=0;
    virtual KTextEditor::Cursor  cursorPosition () const=0;
    virtual KTextEditor::Cursor  cursorPositionVirtual () const=0;
    virtual QPoint          cursorToCoordinate (const KTextEditor::Cursor& cursor) const=0;
    virtual QPoint          cursorPositionCoordinates () const=0;

signals:
    void                    cursorPositionChanged (KTextEditor::View* view, const KTextEditor::Cursor& newPosition);
    void                    verticalScrollPositionChanged (KTextEditor::View* view, const KTextEditor::Cursor& newPos);
    void                    horizontalScrollPositionChanged (KTextEditor::View* view);

public:
    virtual bool            mouseTrackingEnabled () const=0;
    virtual bool            setMouseTrackingEnabled (bool enable)=0;

signals:
    void                    mousePositionChanged (KTextEditor::View* view, const KTextEditor::Cursor& newPosition);

public:
    virtual bool            setSelection (const KTextEditor::Range& range)=0;
    virtual bool            setSelection (const KTextEditor::Cursor& position, int length, bool wrap = 1);
    virtual bool            selection () const=0;
    virtual const KTextEditor::Range&  selectionRange () const=0;
    virtual QString         selectionText () const=0;
    virtual bool            removeSelection ()=0;
    virtual bool            removeSelectionText ()=0;

    virtual bool            setBlockSelection (bool on)=0;
    virtual bool            blockSelection () const=0;

signals:
    void                    selectionChanged (KTextEditor::View* view);

public:
    virtual bool            insertText (const QString& text);
    virtual ~View ();
//force
    KTextEditor::CodeCompletionInterface *codeCompletionInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::CodeCompletionInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End
    
    KTextEditor::SessionConfigInterface *sessionConfigInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::SessionConfigInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End
    
    KTextEditor::TextHintInterface *textHintInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::TextHintInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End

    KTextEditor::AnnotationViewInterface *annotationViewInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::AnnotationViewInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End

    KTextEditor::ConfigInterface *configInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::ConfigInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End

    KTextEditor::CoordinatesToCursorInterface *coordinatesToCursorInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::CoordinatesToCursorInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End

    KTextEditor::TemplateInterface *templateInterface();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::TemplateInterface*>(sipCpp);
    Py_END_ALLOW_THREADS
%End

    KTextEditor::TemplateInterface2 *templateInterface2();
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = dynamic_cast<KTextEditor::TemplateInterface2*>(sipCpp);
    Py_END_ALLOW_THREADS
%End


//end
};
// class View

class CoordinatesToCursorInterface
{
%TypeHeaderCode
#include <ktexteditor/view.h>
%End

public:
    virtual ~CoordinatesToCursorInterface ();
    virtual KTextEditor::Cursor  coordinatesToCursor (const QPoint& coord) const=0;
};
};
// namespace KTextEditor

