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

%ModuleHeaderCode
#include <soprano/inferenceruleset.h>
%End

namespace Soprano
{
namespace Inference
{

enum StandardRuleSet
{
    RDFS,
    NRL
};

class RuleSet
{

public:
                            RuleSet ();
                            RuleSet (const Soprano::Inference::RuleSet&);
    void                    clear ();
    void                    insert (const QString& name, const Soprano::Inference::Rule& rule);
    int                     count () const;
    Soprano::Inference::Rule  at (int index) const;
    Soprano::Inference::Rule  operator [] (int index) const;
    Soprano::Inference::Rule  rule (const QString& name) const;
    Soprano::Inference::Rule  operator [] (const QString& name) const;
    QStringList             ruleNames () const;
    QList<Soprano::Inference::Rule>  allRules () const;
    static Soprano::Inference::RuleSet  standardRuleSet (Soprano::Inference::StandardRuleSet);
    ~RuleSet ();
};
// RuleSet

};
// Inference

};
// Soprano


