//
//     Copyright 2008 Simon Edwards <simon@simonzone.com>

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

namespace KNS
{

class Engine
{
%TypeHeaderCode
#include <engine.h>
%End

public:
    explicit                Engine (QWidget* parent /TransferThis/ = 0);
    KNS::Entry::List        downloadDialogModal (QWidget* parent /Transfer/ = 0);
    static KNS::Entry::List  download ();
    KNS::Entry*             uploadDialogModal (const QString& file);
    static KNS::Entry*      upload (const QString& file);
    void                    downloadDialog ();
    void                    downloadDialog (QObject* receiver, const char* slot);
    void                    uploadDialog (const QString& file);
    bool                    init (const QString& config);

private:
//force
                            Engine (const KNS::Engine&);
//end
};
// Engine

};
// KNS


