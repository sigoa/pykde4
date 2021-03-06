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



class KService : KSycocaEntry
{
%TypeHeaderCode
#include <kservice.h>
%End


public:
    typedef KSharedPtr<KService> Ptr;

    typedef QList<KService::Ptr> List;

                            KService (const QString& name, const QString& exec, const QString& icon);
    explicit                KService (const QString& fullpath);
    explicit                KService (const KDesktopFile* config);
                            KService (QDataStream& str, int offset);
    bool                    isApplication () const;
    QString                 type () const;
    QString                 exec () const /PyName=exec_/;
    QString                 library () const;
    QString                 icon () const;
    bool                    terminal () const;
    QString                 terminalOptions () const;
    bool                    substituteUid () const;
    QString                 username () const;
    QString                 desktopEntryPath () const;
    QString                 desktopEntryName () const;
    QString                 menuId () const;
    QString                 storageId () const;

    enum DBusStartupType
    {
        DBusNone,
        DBusUnique,
        DBusMulti,
        DBusWait
    };

    KService::DBusStartupType  dbusStartupType () const;
    QString                 path () const;
    QString                 comment () const;
    QString                 genericName () const;
    QString                 untranslatedGenericName () const;
    QStringList             keywords () const;
    QStringList             categories () const;
    QStringList             serviceTypes () const;
    bool                    hasServiceType (const QString& serviceTypePtr) const;
    bool                    hasMimeType (const KServiceType* mimeTypePtr) const;
    bool                    allowAsDefault () const;
    QList<KServiceAction>   actions () const;
    bool                    allowMultipleFiles () const;
    int                     initialPreference () const;
    bool                    noDisplay () const;
    QString                 parentApp () const;
    QString                 pluginKeyword () const;
    QString                 docPath () const;
    QVariant                property (const QString& _name, QVariant::Type t) const;
    QString                 locateLocal () const;
    void                    setMenuId (const QString& menuId);
    void                    setTerminal (bool b);
    void                    setTerminalOptions (const QString& options);
    static KService::Ptr    serviceByName (const QString& _name);
    static KService::Ptr    serviceByDesktopPath (const QString& _path);
    static KService::Ptr    serviceByDesktopName (const QString& _name);
    static KService::Ptr    serviceByMenuId (const QString& _menuId);
    static KService::Ptr    serviceByStorageId (const QString& _storageId);
    static KService::List   allServices ();
    static QString          newServicePath (bool showInMenu, const QString& suggestedName, QString* menuId = 0, const QStringList* reservedMenuIds = 0);

protected:
//ig    QVector<ServiceTypeAndPreference>&  _k_accessServiceTypes ();
private:
//force
                            KService (const KService& other);
//end
//ig    QDataStream&            operator >> (QDataStream&, ServiceTypeAndPreference&);
//ig    QDataStream&            operator << (QDataStream&, const ServiceTypeAndPreference&);
public:
    ~KService ();
    bool                    showInKDE () const;
    bool                    hasMimeType (const QString& mimeType) const;
    QStringList             mimeTypes () const;
};
// KService



%MappedType QList<KService::Ptr>
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
        KService::Ptr *t = new KService::Ptr (sipCpp->at(i));
        PyObject *tobj;

        if ((tobj = sipConvertFromNewType(t->data(), sipType_KService, sipTransferObj)) == NULL)
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
            if (!sipCanConvertToType(PyList_GET_ITEM(sipPy, i), sipType_KService, SIP_NOT_NONE))
                return 0;

        return 1;
    }

    QList<KService::Ptr> *ql = new QList<KService::Ptr>;
 
    for (int i = 0; i < PyList_GET_SIZE(sipPy); ++i)
    {
        int state;
        KService *t = reinterpret_cast<KService *>(sipConvertToType(PyList_GET_ITEM(sipPy, i), sipType_KService, sipTransferObj, SIP_NOT_NONE, &state, sipIsErr));
 
        if (*sipIsErr)
        {
            sipReleaseType(t, sipType_KService, state);

            delete ql;
            return 0;
        }

        KSharedPtr<KService> *tptr = new KSharedPtr<KService> (t);

        ql->append(*tptr);

        sipReleaseType(t, sipType_KService, state);
    }
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
%End

};

