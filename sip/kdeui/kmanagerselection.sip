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


class KSelectionOwner : QObject
{
%TypeHeaderCode
#include <kmanagerselection.h>
%End


public:
    explicit                KSelectionOwner (Atom selection, int screen = -1, QObject* parent /TransferThis/ = NULL);
    explicit                KSelectionOwner (const char* selection, int screen = -1, QObject* parent /TransferThis/ = NULL);
    bool                    claim (bool force, bool force_kill = 1);
    void                    release ();
    Window                  ownerWindow () const;
//ig    bool                    filterEvent (XEvent* ev_P);

signals:
    void                    lostOwnership ();

protected:
//ig    virtual bool            handleMessage (XEvent* ev);
    virtual bool            genericReply (Atom target, Atom property, Window requestor);
    virtual void            replyTargets (Atom property, Window requestor);
    virtual void            getAtoms ();
    void                    setData (long extra1, long extra2);
public:
    ~KSelectionOwner ();
};
// KSelectionOwner


class KSelectionWatcher : QObject
{
%TypeHeaderCode
#include <kmanagerselection.h>
%End


public:
    explicit                KSelectionWatcher (Atom selection, int screen = -1, QObject* parent /TransferThis/ = NULL);
    explicit                KSelectionWatcher (const char* selection, int screen = -1, QObject* parent /TransferThis/ = NULL);
    Window                  owner ();
//ig    void                    filterEvent (XEvent* ev_P);

signals:
    void                    newOwner (Window owner);
    void                    lostOwner ();
public:
    ~KSelectionWatcher ();
};
// KSelectionWatcher


