//
//     Copyright 2009 Simon Edwards <simon@simonzone.com>

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

namespace Plasma
{

class ServiceJob : KJob
{
%TypeHeaderCode
#include <plasma/servicejob.h>
%End

public:
                            ServiceJob (const QString& destination, const QString& operation, const QMap<QString,QVariant>& parameters, QObject* parent /TransferThis/ = 0);
    QString                 destination () const;
    QString                 operationName () const;
    QMap<QString,QVariant>  parameters () const;
    QVariant                result () const;
    virtual void            start ();

protected:
    void                    setResult (const QVariant& result);
public:
    ~ServiceJob ();
//ig    Credentials             identity () const;
};
// ServiceJob

};
// Plasma


