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

namespace KParts
{
class FileInfoExtension : QObject
{
%TypeHeaderCode
#include <kparts/fileinfoextension.h>
%End

public:
    enum QueryMode
    {
        None,
        AllItems,
        SelectedItems
    };
    typedef QFlags<KParts::FileInfoExtension::QueryMode> QueryModes;
                            FileInfoExtension (KParts::ReadOnlyPart* parent);
    virtual ~FileInfoExtension ();
    static KParts::FileInfoExtension*  childObject (QObject* obj);
    virtual bool            hasSelection () const;
    virtual KParts::FileInfoExtension::QueryModes  supportedQueryModes () const;
    virtual KFileItemList   queryFor (KParts::FileInfoExtension::QueryMode mode) const=0;
};
};
