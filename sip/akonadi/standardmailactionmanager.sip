// Copyright 2010 Simon Edwards <simon@simonzone.com>

//                 Generated by twine2

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

namespace Akonadi
{
class StandardMailActionManager : QObject
{
%TypeHeaderCode
#include <akonadi/kmime/standardmailactionmanager.h>
%End

public:
    enum Type
    {
        MarkMailAsRead,
        MarkMailAsUnread,
        MarkMailAsImportant,
        MarkMailAsActionItem,
        MarkAllMailAsRead,
        MarkAllMailAsUnread,
        MarkAllMailAsImportant,
        MarkAllMailAsActionItem,
        MoveToTrash,
        MoveAllToTrash,
        RemoveDuplicates,
        EmptyAllTrash,
        EmptyTrash,
        LastType
    };
    explicit                StandardMailActionManager (KActionCollection* actionCollection, QWidget* parent /TransferThis/ = 0);
    ~StandardMailActionManager ();
    void                    setCollectionSelectionModel (QItemSelectionModel* selectionModel);
    void                    setItemSelectionModel (QItemSelectionModel* selectionModel);
    KAction*                createAction (Akonadi::StandardMailActionManager::Type type);
    KAction*                createAction (Akonadi::StandardActionManager::Type type);
    void                    createAllActions ();
    KAction*                action (Akonadi::StandardMailActionManager::Type type) const;
    KAction*                action (Akonadi::StandardActionManager::Type type) const;
    void                    setActionText (Akonadi::StandardActionManager::Type type, const KLocalizedString& text);
    void                    interceptAction (Akonadi::StandardMailActionManager::Type type, bool intercept = 1);
    void                    interceptAction (Akonadi::StandardActionManager::Type type, bool intercept = 1);
    Akonadi::Collection::List  selectedCollections () const;
    Akonadi::Item::List     selectedItems () const;
    void                    setFavoriteCollectionsModel (Akonadi::FavoriteCollectionsModel* favoritesModel);
    void                    setFavoriteSelectionModel (QItemSelectionModel* selectionModel);
    void                    setCollectionPropertiesPageNames (const QStringList& names);
signals:
    void                    actionStateUpdated ();
public:
    Akonadi::StandardActionManager*  standardActionManager () const;
};
};
