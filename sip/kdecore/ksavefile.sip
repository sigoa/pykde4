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


class KSaveFile : QFile
{
%TypeHeaderCode
#include <ksavefile.h>
%End


public:
                            KSaveFile ();
    explicit                KSaveFile (const QString& filename, const KComponentData& componentData = KGlobal::mainComponent());
    void                    setFileName (const QString& filename);
    QString                 fileName () const;
    QFile::FileError        error () const;
    QString                 errorString () const;
    virtual bool            open (QIODevice::OpenMode flags = QIODevice::ReadWrite);
    void                    abort ();
    bool                    finalize ();
    static bool             backupFile (const QString& filename, const QString& backupDir = QString());
    static bool             simpleBackupFile (const QString& filename, const QString& backupDir = QString(), const QString& backupExtension = QLatin1String("~"));
    static bool             numberedBackupFile (const QString& filename, const QString& backupDir = QString(), const QString& backupExtension = QString::fromLatin1("~"), const uint maxBackups = 10);
    static bool             rcsBackupFile (const QString& filename, const QString& backupDir = QString(), const QString& backupMessage = QString());

private:
//force
                            KSaveFile (const KSaveFile&);
//end
public:
    ~KSaveFile ();
};
// KSaveFile


