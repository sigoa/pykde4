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
template <T>
class Iterator : Soprano::Error::ErrorCache /Abstract/
{
%TypeHeaderCode
#include <soprano/iterator.h>
%End

public:
                            Iterator ();
//Iterator (Soprano::IteratorBackend<T>* sti);
//Iterator (const Soprano::Iterator& sti);
    void                    close ();
    bool                    next ();
    T                       current () const;
//ig    T                       operator * () const;
    bool                    isValid () const;
    QList<T>                allElements ();

protected:
//ig    void                    setBackend (Soprano::IteratorBackend<T>* b);
//ig    IteratorBackend<T>*     backend () const;
};
// Iterator

};
// Soprano


