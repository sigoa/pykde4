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

namespace Akonadi
{

class AgentInstance
{
%TypeHeaderCode
#include <akonadi/agentinstance.h>
%End


public:
    typedef QList<Akonadi::AgentInstance> List;


    enum Status
    {
        Idle,
        Running,
        Broken
    };

                            AgentInstance ();
                            AgentInstance (const Akonadi::AgentInstance& other);
    bool                    isValid () const;
    Akonadi::AgentType      type () const;
    QString                 identifier () const;
    QString                 name () const;
    void                    setName (const QString& name);
    Akonadi::AgentInstance::Status  status () const;
    QString                 statusMessage () const;
    int                     progress () const;
    bool                    isOnline () const;
    void                    setIsOnline (bool online);
    void                    configure (QWidget* parent /Transfer/ = 0);
    void                    synchronize ();
    void                    synchronizeCollectionTree ();
    bool                    operator == (const Akonadi::AgentInstance& other) const;
    void                    reconfigure () const;
    void                    restart () const;

    ~AgentInstance ();
    void                    abortCurrentTask () const;
};
// AgentInstance

};
// Akonadi


