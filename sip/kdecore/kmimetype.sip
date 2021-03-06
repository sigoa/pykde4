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



class KMimeType : KServiceType
{
%TypeHeaderCode
#include <kmimetype.h>
%End


public:
    typedef KSharedPtr<KMimeType> Ptr;

    typedef QList<KMimeType::Ptr> List;

    QString                 iconName (const KUrl& url = KUrl()) const;
    static QString          iconNameForUrl (const KUrl& url, mode_t mode = 0);
    static QString          favIconForUrl (const KUrl& url);
    QString                 comment (const KUrl& url = KUrl()) const;
    QStringList             patterns () const;

    enum FindByNameOption
    {
        DontResolveAlias,
        ResolveAliases
    };

    static KMimeType::Ptr   mimeType (const QString& name, KMimeType::FindByNameOption options = KMimeType::DontResolveAlias);
    static KMimeType::Ptr   findByUrl (const KUrl& url, mode_t mode = 0, bool is_local_file = 0, bool fast_mode = 0, int* accuracy /Out/ = 0);
    static KMimeType::Ptr   findByPath (const QString& path, mode_t mode = 0, bool fast_mode = 0, int* accuracy /Out/ = 0);
    static KMimeType::Ptr   findByContent (const QByteArray& data, int* accuracy /Out/ = 0);
    static KMimeType::Ptr   findByNameAndContent (const QString& name, const QByteArray& data, mode_t mode = 0, int* accuracy /Out/ = 0);
    static KMimeType::Ptr   findByFileContent (const QString& fileName, int* accuracy /Out/ = 0);
    static bool             isBinaryData (const QString& fileName);
    static bool             isBufferBinaryData (const QByteArray& data);
    static KMimeType::List  allMimeTypes ();
    static QString          defaultMimeType ();
    static KMimeType::Ptr   defaultMimeTypePtr ();
    bool                    isDefault () const;
    QString                 parentMimeType () const;
    QStringList             parentMimeTypes () const;
    QStringList             allParentMimeTypes () const;
    bool                    is (const QString& mimeTypeName) const /PyName=is_/;
    QString                 userSpecifiedIconName () const;
    QString                 mainExtension () const;
    static QString          extractKnownExtension (const QString& fileName);
    static int              sharedMimeInfoVersion ();

protected:
                            KMimeType (QDataStream& str, int offset);
                            KMimeType (const QString& fullpath, const QString& name, const QString& comment);
//ig                            KMimeType (KMimeTypePrivate& dd);
//ig                            KMimeType (KMimeTypePrivate& dd, const QString& name, const QString& comment);
public:
    ~KMimeType ();
    static KMimeType::Ptr   findByContent (QIODevice* device, int* accuracy = 0);
    static KMimeType::Ptr   findByNameAndContent (const QString& name, QIODevice* device, mode_t mode = 0, int* accuracy = 0);
    static bool             matchFileName (const QString& filename, const QString& pattern);
};
// KMimeType



%MappedType QList<KMimeType::Ptr>
{
%TypeHeaderCode
#include <qlist.h>
%End

%ConvertFromTypeCode
    // Create the list.
    PyObject *l;

    if ((l = PyList_New(sipCpp->size())) == NULL)
        return NULL;

    // Set the list elements.
    for (int i = 0; i < sipCpp->size(); ++i)
    {
        KMimeType::Ptr *t = new KMimeType::Ptr (sipCpp->at(i));
        PyObject *tobj;

        if ((tobj = sipConvertFromNewInstance(t->data(), sipClass_KMimeType, sipTransferObj)) == NULL)
        {
            Py_DECREF(l);
            delete t;

            return NULL;
        }

        PyList_SET_ITEM(l, i, tobj);
    }

    return l;
%End

%ConvertToTypeCode
    // Check the type if that is all that is required.
    if (sipIsErr == NULL)
    {
        if (!PyList_Check(sipPy))
            return 0;

        for (int i = 0; i < PyList_GET_SIZE(sipPy); ++i)
            if (!sipCanConvertToInstance(PyList_GET_ITEM(sipPy, i), sipClass_KMimeType, SIP_NOT_NONE))
                return 0;

        return 1;
    }

    QList<KMimeType::Ptr> *ql = new QList<KMimeType::Ptr>;
 
    for (int i = 0; i < PyList_GET_SIZE(sipPy); ++i)
    {
        int state;
        KMimeType *t = reinterpret_cast<KMimeType *>(sipConvertToInstance(PyList_GET_ITEM(sipPy, i), sipClass_KMimeType, sipTransferObj, SIP_NOT_NONE, &state, sipIsErr));
 
        if (*sipIsErr)
        {
            sipReleaseInstance(t, sipClass_KMimeType, state);

            delete ql;
            return 0;
        }

        KSharedPtr<KMimeType> *tptr = new KSharedPtr<KMimeType> (t);

        ql->append(*tptr);

        sipReleaseInstance(t, sipClass_KMimeType, state);
    }
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
%End
};

