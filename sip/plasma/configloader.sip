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

class ConfigLoader : KConfigSkeleton
{
%TypeHeaderCode
#include <plasma/configloader.h>
%End


public:
                            ConfigLoader (const QString& configFile, QIODevice* xml, QObject* parent /TransferThis/ = 0);
                            ConfigLoader (KSharedConfigPtr config, QIODevice* xml, QObject* parent /TransferThis/ = 0);
                            ConfigLoader (const KConfigGroup* config, QIODevice* xml, QObject* parent /TransferThis/ = 0);
    KConfigSkeletonItem*    findItem (const QString& group, const QString& key);
    KConfigSkeletonItem*    findItemByName (const QString& name);
    QVariant                property (const QString& name);
    bool                    hasGroup (const QString& group) const;
    QStringList             groupList () const;

protected:
    void                    usrWriteConfig ();
public:
    ~ConfigLoader ();
};
// ConfigLoader

};
// Plasma


