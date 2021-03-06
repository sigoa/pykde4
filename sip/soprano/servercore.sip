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

namespace Soprano
{
namespace Server
{

class ServerCore : QObject, Soprano::Error::ErrorCache
{
%TypeHeaderCode
#include <soprano/servercore.h>
%End

public:
                            ServerCore (QObject* parent /TransferThis/ = 0);
    const quint16 DEFAULT_PORT;
    void                    setBackend (const Soprano::Backend* backend);
    const Soprano::Backend*  backend () const;
    void                    setBackendSettings (const QList<Soprano::BackendSetting>& settings);
    QList<Soprano::BackendSetting>  backendSettings () const;
    virtual Soprano::Model*  model (const QString& name);
    virtual void            removeModel (const QString& name);
    virtual QStringList     allModels () const;
    bool                    start (const QString& socketPath = QString());
    bool                    listen (quint16 port = Soprano::Server::ServerCore::DEFAULT_PORT);
    quint16                 serverPort () const;
    void                    registerAsDBusObject (const QString& objectPath = QString());

protected:
    virtual Soprano::Model*  createModel (const QList<Soprano::BackendSetting>& settings);
public:
    virtual ~ServerCore ();
    void                    setMaximumConnectionCount (int max);
    int                     maximumConnectionCount () const;
};
// ServerCore

};
// Server

};
// Soprano


