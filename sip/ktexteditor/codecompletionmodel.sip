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

%ModuleHeaderCode
//ctscc
#include <ktexteditor/annotationinterface.h>
#include <ktexteditor/codecompletionmodel.h>
#include <ktexteditor/configpage.h>
#include <ktexteditor/cursorfeedback.h>
#include <ktexteditor/document.h>
#include <ktexteditor/editor.h>
#include <ktexteditor/editorchooser.h>
#include <ktexteditor/loadsavefiltercheckplugin.h>
#include <ktexteditor/plugin.h>
#include <qobject.h>
#include <ktexteditor/rangefeedback.h>
#include <ktexteditor/smartcursornotifier.h>
#include <ktexteditor/smartrangenotifier.h>
#include <ktexteditor/view.h>
%End

namespace KTextEditor
{

class CodeCompletionModel : QAbstractItemModel
{
%TypeHeaderCode
#include <ktexteditor/codecompletionmodel.h>
%End


public:
                            CodeCompletionModel (QObject* parent /TransferThis/);

    enum Columns
    {
        Prefix,
        Icon,
        Scope,
        Name,
        Arguments,
        Postfix
    };

    static const int ColumnCount;

    enum CompletionProperty
    {
        NoProperty,
        FirstProperty,
        Public,
        Protected,
        Private,
        Static,
        Const,
        Namespace,
        Class,
        Struct,
        Union,
        Function,
        Variable,
        Enum,
        Template,
        TypeAlias,
        Virtual,
        Override,
        Inline,
        Friend,
        Signal,
        Slot,
        LocalScope,
        NamespaceScope,
        GlobalScope,
        LastProperty
    };

    typedef QFlags<KTextEditor::CodeCompletionModel::CompletionProperty> CompletionProperties;

    enum HighlightMethod
    {
        NoHighlighting,
        InternalHighlighting,
        CustomHighlighting
    };

    typedef QFlags<KTextEditor::CodeCompletionModel::HighlightMethod> HighlightMethods;

    enum ExtraItemDataRoles
    {
        CompletionRole,
        ScopeIndex,
        MatchQuality,
        SetMatchContext,
        HighlightingMethod,
        CustomHighlight,
        InheritanceDepth,
        IsExpandable,
        ExpandingWidget,
        ItemSelected,
        ArgumentHintDepth,
        BestMatchesCount,
        AccessibilityNext,
        AccessibilityPrevious,
        AccessibilityAccept,
        GroupRole
    };

    static const int LastItemDataRole;
    void                    setRowCount (int rowCount);

    enum InvocationType
    {
        AutomaticInvocation,
        UserInvocation,
        ManualInvocation
    };

    virtual void            completionInvoked (KTextEditor::View* view, const KTextEditor::Range& range, KTextEditor::CodeCompletionModel::InvocationType invocationType);
    virtual void            executeCompletionItem (KTextEditor::Document* document, const KTextEditor::Range& word, int row) const;
    virtual int             columnCount (const QModelIndex& parent = QModelIndex()) const;
    virtual QModelIndex     index (int row, int column, const QModelIndex& parent = QModelIndex()) const;
    virtual QMap<int,QVariant>  itemData (const QModelIndex& index) const;
    virtual QModelIndex     parent (const QModelIndex& index) const;
    virtual int             rowCount (const QModelIndex& parent = QModelIndex()) const;

// Subclasses for QObject

%ConvertToSubClassCode
    // CTSCC for subclasses of 'QObject'
    sipType = NULL;

    if (dynamic_cast<KTextEditor::Document*>(sipCpp))
        sipType = sipType_KTextEditor_Document;
    else if (dynamic_cast<KTextEditor::AnnotationModel*>(sipCpp))
        sipType = sipType_KTextEditor_AnnotationModel;
    else if (dynamic_cast<KTextEditor::Editor*>(sipCpp))
        sipType = sipType_KTextEditor_Editor;
    else if (dynamic_cast<KTextEditor::LoadSaveFilterCheckPlugin*>(sipCpp))
        sipType = sipType_KTextEditor_LoadSaveFilterCheckPlugin;
    else if (dynamic_cast<KTextEditor::Plugin*>(sipCpp))
        sipType = sipType_KTextEditor_Plugin;
    else if (dynamic_cast<KTextEditor::CodeCompletionModel*>(sipCpp))
        {
        sipType = sipType_KTextEditor_CodeCompletionModel;
        if (dynamic_cast<KTextEditor::CodeCompletionModel2*>(sipCpp))
            sipType = sipType_KTextEditor_CodeCompletionModel2;
        }
    else if (dynamic_cast<KTextEditor::ConfigPage*>(sipCpp))
        sipType = sipType_KTextEditor_ConfigPage;
    else if (dynamic_cast<KTextEditor::EditorChooser*>(sipCpp))
        sipType = sipType_KTextEditor_EditorChooser;
    else if (dynamic_cast<KTextEditor::View*>(sipCpp))
        sipType = sipType_KTextEditor_View;
%End


    virtual ~CodeCompletionModel ();
    bool                    hasGroups () const;
signals:
    void                    waitForReset ();
    void                    hasGroupsChanged (KTextEditor::CodeCompletionModel* model, bool hasGroups);
protected:
    void                    setHasGroups (bool hasGroups);
};
// class CodeCompletionModel

class CodeCompletionModel2 : KTextEditor::CodeCompletionModel
{
%TypeHeaderCode
#include <ktexteditor/codecompletionmodel.h>
%End

public:
                            CodeCompletionModel2 (QObject* parent /TransferThis/);
    virtual void            executeCompletionItem2 (KTextEditor::Document* document, const KTextEditor::Range& word, const QModelIndex& index) const;
};
};
// namespace KTextEditor

