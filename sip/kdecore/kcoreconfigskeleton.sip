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



%ModuleHeaderCode
//ctscc
#include <kcoreconfigskeleton.h>
%End

%ModuleHeaderCode
// Need to keep a reference alive for 'val' for scalar types
// These are called in the respective class ctor %MethodCode
// and in the KCoreConfigSkeleton add* methods %MethodCode

class PyItemBool : public KCoreConfigSkeleton::ItemBool
{
public:
    PyItemBool (const QString &group, const QString &key, bool val, bool defaultValue = 1) :
        KCoreConfigSkeleton::ItemBool (group, key, this->value, defaultValue)
    {
        value = val;
    }

private:
    bool value;
};


class PyItemInt : public KCoreConfigSkeleton::ItemInt
{
public:
    PyItemInt (const QString &group, const QString &key, qint32 val, qint32 defaultValue = 1) :
        KCoreConfigSkeleton::ItemInt (group, key, this->value, defaultValue)
    {
        value = val;
    }

private:
    qint32 value;
};
    

class PyItemUInt : public KCoreConfigSkeleton::ItemUInt
{
public:
    PyItemUInt (const QString &group, const QString &key, quint32 val, quint32 defaultValue = 1) :
        KCoreConfigSkeleton::ItemUInt (group, key, this->value, defaultValue)
    {
        value = val;
    }

private:
    quint32 value;
};
    

class PyItemLongLong : public KCoreConfigSkeleton::ItemLongLong
{
public:
    PyItemLongLong (const QString &group, const QString &key, qint64 val, qint64 defaultValue = 1) :
        KCoreConfigSkeleton::ItemLongLong (group, key, this->value, defaultValue)
    {
        value = val;
    }

private:
    qint64 value;
};
    
    
class PyItemULongLong : public KCoreConfigSkeleton::ItemULongLong
{
public:
    PyItemULongLong (const QString &group, const QString &key, quint64 val, quint64 defaultValue = 1) :
        KCoreConfigSkeleton::ItemULongLong (group, key, this->value, defaultValue)
    {
        value = val;
    }

private:
    quint64 value;
};
    
    
class PyItemDouble : public KCoreConfigSkeleton::ItemDouble
{
public:
    PyItemDouble (const QString &group, const QString &key, double val, double defaultValue = 1) :
        KCoreConfigSkeleton::ItemDouble (group, key, this->value, defaultValue)
    {
        value = val;
    }

private:
    double value;
};

    
class PyItemEnum : public KCoreConfigSkeleton::ItemEnum
{
public:
    PyItemEnum (const QString& group, const QString& key, int& val, const QList<KCoreConfigSkeleton::ItemEnum::Choice>& choices, int defaultValue = 0) :
        KCoreConfigSkeleton::ItemEnum(group, key, this->value, choices, defaultValue)
    {
        value = val;
    };

private:
    int value;
};

%End

class KConfigSkeletonItem
{
%TypeHeaderCode
#include <kcoreconfigskeleton.h>
%End

//force
                            KConfigSkeletonItem (const KConfigSkeletonItem& other);
//end
public:
    typedef QList<KConfigSkeletonItem*> List;

    typedef QHash<QString,KConfigSkeletonItem*> Dict;

//ig    typedef QHash<QString,KConfigSkeletonItem*>::Iterator DictIterator;

                            KConfigSkeletonItem (const QString& _group, const QString& _key);
    void                    setGroup (const QString& _group);
    QString                 group () const;
    void                    setKey (const QString& _key);
    QString                 key () const;
    void                    setName (const QString& _name);
    QString                 name () const;
    void                    setLabel (const QString& l);
    QString                 label () const;
    void                    setToolTip (const QString& t);
    QString                 toolTip () const;
    void                    setWhatsThis (const QString& w);
    QString                 whatsThis () const;
    virtual void            readConfig (KConfig*)=0;
    virtual void            writeConfig (KConfig*)=0;
    virtual void            readDefault (KConfig*)=0;
    virtual void            setProperty (const QVariant& p)=0;
    virtual bool            isEqual (const QVariant& p) const=0;
    virtual QVariant        property () const=0;
    virtual QVariant        minValue () const;
    virtual QVariant        maxValue () const;
    virtual void            setDefault ()=0;
    virtual void            swapDefault ()=0;
    bool                    isImmutable () const;

protected:
    void                    readImmutability (const KConfigGroup& group);
public:
    ~KConfigSkeletonItem ();
};
// KConfigSkeletonItem


//ig class KConfigSkeletonGenericItem;


class KCoreConfigSkeleton : QObject
{
%TypeHeaderCode
#include <kcoreconfigskeleton.h>
%End



public:
    class ItemString : KConfigSkeletonItem
    {


    public:
        enum Type
        {
            Normal,
            Password,
            Path
        };

                                ItemString (const QString& _group, const QString& _key, QString& reference, const QString& defaultValue = QLatin1String(""), KCoreConfigSkeleton::ItemString::Type type = KCoreConfigSkeleton::ItemString::Normal);
        void                    writeConfig (KConfig* config);
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QString& v);
        QString&                value ();
        virtual void            setDefaultValue (const QString& v);
        virtual void            setDefault ();
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemString



    class ItemPassword : KCoreConfigSkeleton::ItemString
    {

    public:
                                ItemPassword (const QString& _group, const QString& _key, QString& reference, const QString& defaultValue = QLatin1String(""));

//force
        void                    setValue (const QString& v);
        QString&                value ();
        virtual void            setDefaultValue (const QString& v);
        virtual void            setDefault ();
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemPassword



    class ItemPath : KCoreConfigSkeleton::ItemString
    {

    public:
                                ItemPath (const QString& _group, const QString& _key, QString& reference, const QString& defaultValue = QString());

//force
        void                    setValue (const QString& v);
        QString&                value ();
        virtual void            setDefaultValue (const QString& v);
        virtual void            setDefault ();
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemPath



    class ItemUrl : KConfigSkeletonItem
    {

    public:
                                ItemUrl (const QString& _group, const QString& _key, KUrl& reference, const KUrl& defaultValue = KUrl());
        void                    writeConfig (KConfig* config);
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const KUrl& v);
        KUrl&                   value ();
        virtual void            setDefaultValue (const KUrl& v);
        virtual void            setDefault ();
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemUrl



    class ItemProperty : KConfigSkeletonItem
    {

    public:
                                ItemProperty (const QString& _group, const QString& _key, QVariant& reference, const QVariant& defaultValue = 0);
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QVariant& v);
        QVariant&               value ();
        virtual void            setDefaultValue (const QVariant& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemProperty



    class ItemBool : KConfigSkeletonItem
    {

    public:
//force
                                ItemBool (const QString& _group, const QString& _key, bool reference, bool defaultValue = 1) [(const QString& _group, const QString& _key, bool& reference, bool defaultValue = 1)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
//    sipCpp = new sipKCoreConfigSkeleton_ItemBool (PyItemBool (*a0, *a1, a2, a3));
    sipCpp = new sipKCoreConfigSkeleton_ItemBool (*a0, *a1, a2, a3);
    Py_END_ALLOW_THREADS

%End

//end
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const bool& v /In/);
        bool                    value ();
        virtual void            setDefaultValue (const bool& v /In/);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();



//  Subclasses of KConfigSkeletonItem

//end
%ConvertToSubClassCode
    // CTSCC for subclasses of 'KConfigSkeletonItem'
    sipType = NULL;

    if (dynamic_cast<KCoreConfigSkeleton::ItemBool*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemBool;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemDateTime*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemDateTime;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemDouble*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemDouble;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemInt*>(sipCpp))
        {
        sipType = sipType_KCoreConfigSkeleton_ItemInt;
        if (dynamic_cast<KCoreConfigSkeleton::ItemEnum*>(sipCpp))
            sipType = sipType_KCoreConfigSkeleton_ItemEnum;
        }
    else if (dynamic_cast<KCoreConfigSkeleton::ItemIntList*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemIntList;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemLongLong*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemLongLong;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemPoint*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemPoint;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemProperty*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemProperty;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemRect*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemRect;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemSize*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemSize;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemString*>(sipCpp))
        {
        sipType = sipType_KCoreConfigSkeleton_ItemString;
        if (dynamic_cast<KCoreConfigSkeleton::ItemPassword*>(sipCpp))
            sipType = sipType_KCoreConfigSkeleton_ItemPassword;
        else if (dynamic_cast<KCoreConfigSkeleton::ItemPath*>(sipCpp))
            sipType = sipType_KCoreConfigSkeleton_ItemPath;
        }
    else if (dynamic_cast<KCoreConfigSkeleton::ItemStringList*>(sipCpp))
        {
        sipType = sipType_KCoreConfigSkeleton_ItemStringList;
        if (dynamic_cast<KCoreConfigSkeleton::ItemPathList*>(sipCpp))
            sipType = sipType_KCoreConfigSkeleton_ItemPathList;
        }
    else if (dynamic_cast<KCoreConfigSkeleton::ItemUInt*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemUInt;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemULongLong*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemULongLong;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemUrl*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemUrl;
    else if (dynamic_cast<KCoreConfigSkeleton::ItemUrlList*>(sipCpp))
        sipType = sipType_KCoreConfigSkeleton_ItemUrlList;
%End
//ig                                ItemBool (const QString& _group, const QString& _key, bool& reference, bool defaultValue = 1);
    };
// ItemBool



    class ItemInt : KConfigSkeletonItem
    {

    public:
//force
                                ItemInt (const QString& _group, const QString& _key, qint32 reference, qint32 defaultValue = 0) [(const QString& _group, const QString& _key, qint32& reference, qint32 defaultValue = 0)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
//    sipCpp = new sipKCoreConfigSkeleton_ItemInt (PyItemInt (*a0, *a1, a2, a3));
    sipCpp = new sipKCoreConfigSkeleton_ItemInt (*a0, *a1, a2, a3);
    Py_END_ALLOW_THREADS

%End

//end
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;
        QVariant                minValue () const;
        QVariant                maxValue () const;
        void                    setMinValue (qint32);
        void                    setMaxValue (qint32);

//force
        void                    setValue (const qint32& v /In/);
        qint32                  value ();
        virtual void            setDefaultValue (const qint32& v /In/);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();
//end
//ig                                ItemInt (const QString& _group, const QString& _key, qint32& reference, qint32 defaultValue = 0);
    };
// ItemInt



    class ItemLongLong : KConfigSkeletonItem
    {

    public:
//force
                                ItemLongLong (const QString& _group, const QString& _key, qint64 reference, qint64 defaultValue = 0) [(const QString& _group, const QString& _key, qint64& reference, qint64 defaultValue = 0)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
//    sipCpp = new sipKCoreConfigSkeleton_ItemLongLong (PyItemLongLong (*a0, *a1, a2, a3));
    sipCpp = new sipKCoreConfigSkeleton_ItemLongLong (*a0, *a1, a2, a3);
    Py_END_ALLOW_THREADS
%End

//end
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;
        QVariant                minValue () const;
        QVariant                maxValue () const;
        void                    setMinValue (qint64);
        void                    setMaxValue (qint64);

//force
        void                    setValue (const qint64& v /In/);
        quint64                 value ();
        virtual void            setDefaultValue (const qint64& v /In/);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();
//end
//ig                                ItemLongLong (const QString& _group, const QString& _key, qint64& reference, qint64 defaultValue = 0);
    };
// ItemLongLong


    typedef KCoreConfigSkeleton::ItemLongLong ItemInt64;


    class ItemEnum : KCoreConfigSkeleton::ItemInt
    {


    public:
        class Choice
        {

        public:
            QString name;
            QString label;
            QString whatsThis;
        };
// Choice



        class Choice2
        {

        public:
            QString name;
            QString label;
            QString toolTip;
            QString whatsThis;
        };
// Choice2


//force
                                ItemEnum (const QString& _group, const QString& _key, qint32 reference, const QList<KCoreConfigSkeleton::ItemEnum::Choice> choices, qint32 defaultValue = 0) [(const QString& _group, const QString& _key, qint32& reference, const QList<KCoreConfigSkeleton::ItemEnum::Choice>& choices, qint32 defaultValue = 0)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipCpp = new sipKCoreConfigSkeleton_ItemEnum (*a0, *a1, a2, *a3, a4);
//    sipCpp = new sipKCoreConfigSkeleton_ItemEnum (PyItemEnum (*a0, *a1, a2, *a3, a4));
    Py_END_ALLOW_THREADS
%End

//end
        QList<KCoreConfigSkeleton::ItemEnum::Choice>  choices () const;
        QList<KCoreConfigSkeleton::ItemEnum::Choice2>  choices2 () const;
        void                    readConfig (KConfig* config);
        void                    writeConfig (KConfig* config);

//force
        void                    setValue (const qint32& v /In/);
        qint32                  value ();
        virtual void            setDefaultValue (const qint32& v /In/);
        virtual void            setDefault ();
        void                    readDefault (KConfig* config);
        void                    swapDefault ();
//end
//ig                                ItemEnum (const QString& _group, const QString& _key, qint32& reference, const QList<Choice>& choices, qint32 defaultValue = 0);
//ig                                ItemEnum (const QString& _group, const QString& _key, qint32& reference, const QList<Choice2>& choices, qint32 defaultValue = 0);
    };
// ItemEnum



    class ItemUInt : KConfigSkeletonItem
    {

    public:
//force
                                ItemUInt (const QString& _group, const QString& _key, quint32 reference, quint32 defaultValue = 0) [(const QString& _group, const QString& _key, quint32& reference, quint32 defaultValue = 0)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
//    sipCpp = new sipKCoreConfigSkeleton_ItemUInt (PyItemUInt (*a0, *a1, a2, a3));
    sipCpp = new sipKCoreConfigSkeleton_ItemUInt (*a0, *a1, a2, a3);
    Py_END_ALLOW_THREADS
%End
//end
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;
        QVariant                minValue () const;
        QVariant                maxValue () const;
        void                    setMinValue (quint32);
        void                    setMaxValue (quint32);

//force
        void                    setValue (const quint32& v /In/);
        quint32                 value ();
        virtual void            setDefaultValue (const quint32& v /In/);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();
//end
//ig                                ItemUInt (const QString& _group, const QString& _key, quint32& reference, quint32 defaultValue = 0);
    };
// ItemUInt



    class ItemULongLong : KConfigSkeletonItem
    {

    public:
//force
                                ItemULongLong (const QString& _group, const QString& _key, quint64 reference, quint64 defaultValue = 0) [(const QString& _group, const QString& _key, quint64& reference, quint64 defaultValue = 0)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
//    sipCpp = new sipKCoreConfigSkeleton_ItemULongLong (PyItemULongLong (*a0, *a1, a2, a3));
    sipCpp = new sipKCoreConfigSkeleton_ItemULongLong (*a0, *a1, a2, a3);
    Py_END_ALLOW_THREADS
%End
//end
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;
        QVariant                minValue () const;
        QVariant                maxValue () const;
        void                    setMinValue (quint64);
        void                    setMaxValue (quint64);

//force
        void                    setValue (const quint64& v /In/);
        quint64                 value ();
        virtual void            setDefaultValue (const quint64& v /In/);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();
//end
//ig                                ItemULongLong (const QString& _group, const QString& _key, quint64& reference, quint64 defaultValue = 0);
    };
// ItemULongLong


    typedef KCoreConfigSkeleton::ItemULongLong ItemUInt64;


    class ItemDouble : KConfigSkeletonItem
    {

    public:
//force
                                ItemDouble (const QString& _group, const QString& _key, double reference, double defaultValue = 0) [(const QString& _group, const QString& _key, double& reference, double defaultValue = 0)];
%MethodCode
    Py_BEGIN_ALLOW_THREADS
//    sipCpp = new sipKCoreConfigSkeleton_ItemDouble (PyItemDouble (*a0, *a1, a2, a3));
    sipCpp = new sipKCoreConfigSkeleton_ItemDouble (*a0, *a1, a2, a3);
    Py_END_ALLOW_THREADS
%End
//end
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;
        QVariant                minValue () const;
        QVariant                maxValue () const;
        void                    setMinValue (double);
        void                    setMaxValue (double);

//force
        void                    setValue (const double& v /In/);
        double                  value ();
        virtual void            setDefaultValue (const double& v /In/);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();
//end
//ig                                ItemDouble (const QString& _group, const QString& _key, double& reference, double defaultValue = 0);
    };
// ItemDouble



    class ItemRect : KConfigSkeletonItem
    {

    public:
                                ItemRect (const QString& _group, const QString& _key, QRect& reference, const QRect& defaultValue = QRect());
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QRect& v);
        QRect&                  value ();
        virtual void            setDefaultValue (const QRect& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemRect



    class ItemPoint : KConfigSkeletonItem
    {

    public:
                                ItemPoint (const QString& _group, const QString& _key, QPoint& reference, const QPoint& defaultValue = QPoint());
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QPoint& v);
        QPoint&                 value ();
        virtual void            setDefaultValue (const QPoint& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemPoint



    class ItemSize : KConfigSkeletonItem
    {

    public:
                                ItemSize (const QString& _group, const QString& _key, QSize& reference, const QSize& defaultValue = QSize());
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QSize& v);
        QSize&                  value ();
        virtual void            setDefaultValue (const QSize& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemSize



    class ItemDateTime : KConfigSkeletonItem
    {

    public:
                                ItemDateTime (const QString& _group, const QString& _key, QDateTime& reference, const QDateTime& defaultValue = QDateTime());
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QDateTime& v);
        QDateTime&              value ();
        virtual void            setDefaultValue (const QDateTime& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemDateTime



    class ItemStringList : KConfigSkeletonItem
    {

    public:
                                ItemStringList (const QString& _group, const QString& _key, QStringList& reference, const QStringList& defaultValue = QStringList());
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QStringList& v);
        QStringList&            value ();
        virtual void            setDefaultValue (const QStringList& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemStringList



    class ItemPathList : KCoreConfigSkeleton::ItemStringList
    {

    public:
                                ItemPathList (const QString& _group, const QString& _key, QStringList& reference, const QStringList& defaultValue = QStringList());
        void                    readConfig (KConfig* config);
        void                    writeConfig (KConfig* config);
    };
// ItemPathList



    class ItemUrlList : KConfigSkeletonItem
    {

    public:
                                ItemUrlList (const QString& _group, const QString& _key, KUrl::List& reference, const KUrl::List& defaultValue = KUrl::List());
        void                    readConfig (KConfig* config);
        void                    writeConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const KUrl::List& v);
        KUrl::List&             value ();
        virtual void            setDefaultValue (const KUrl::List& v);
        virtual void            setDefault ();
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemUrlList



    class ItemIntList : KConfigSkeletonItem
    {

    public:
                                ItemIntList (const QString& _group, const QString& _key, QList<int>& reference, const QList<int>& defaultValue = QList<int>());
        void                    readConfig (KConfig* config);
        void                    setProperty (const QVariant& p);
        bool                    isEqual (const QVariant& p) const;
        QVariant                property () const;

//force
        void                    setValue (const QList<int>& v);
        QList<int>&             value ();
        virtual void            setDefaultValue (const QList<int>& v);
        virtual void            setDefault ();
        virtual void            writeConfig (KConfig* config);
        void                    readDefault (KConfig* config);
        void                    swapDefault ();

//end
    };
// ItemIntList


    explicit                KCoreConfigSkeleton (const QString& configname = QString(), QObject* parent /TransferThis/ = 0);
    explicit                KCoreConfigSkeleton (KSharedConfig::Ptr config, QObject* parent /TransferThis/ = 0);
    virtual void            setDefaults ();
    virtual void            readConfig ();
    virtual void            writeConfig ();
    void                    setCurrentGroup (const QString& group);
    QString                 currentGroup () const;
    void                    addItem (KConfigSkeletonItem*, const QString& name = QString());
    KCoreConfigSkeleton::ItemString*  addItemString (const QString& name, QString& reference, const QString& defaultValue = QLatin1String(""), const QString& key = QString());
    KCoreConfigSkeleton::ItemPassword*  addItemPassword (const QString& name, QString& reference, const QString& defaultValue = QLatin1String(""), const QString& key = QString());
    KCoreConfigSkeleton::ItemPath*  addItemPath (const QString& name, QString& reference, const QString& defaultValue = QLatin1String(""), const QString& key = QString());
    KCoreConfigSkeleton::ItemProperty*  addItemProperty (const QString& name, QVariant& reference, const QVariant& defaultValue = QVariant(), const QString& key = QString());
    KCoreConfigSkeleton::ItemBool*  addItemBool (const QString& name, bool& reference /In/, bool defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemBool (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemInt*  addItemInt (const QString& name, qint32& reference /In/, qint32 defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemInt (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemUInt*  addItemUInt (const QString& name, quint32& reference /In/, quint32 defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemUInt (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemLongLong*  addItemLongLong (const QString& name, qint64& reference /In/, qint64 defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemLongLong (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemLongLong*  addItemInt64 (const QString& name, qint64& reference /In/, qint64 defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemLongLong (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemULongLong*  addItemULongLong (const QString& name, quint64& reference /In/, quint64 defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemULongLong (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemULongLong*  addItemUInt64 (const QString& name, quint64& reference /In/, quint64 defaultValue = 0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemULongLong (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemDouble*  addItemDouble (const QString& name, double& reference /In/, double defaultValue = 0.0, const QString& key = QString());
%MethodCode
    Py_BEGIN_ALLOW_THREADS
    sipRes = new PyItemDouble (sipCpp->currentGroup(), a3->isNull() ? *a0 : *a3, a1, a2);
    sipCpp->addItem(sipRes, *a0);
    Py_END_ALLOW_THREADS
%End
    
    KCoreConfigSkeleton::ItemRect*  addItemRect (const QString& name, QRect& reference, const QRect& defaultValue = QRect(), const QString& key = QString());
    KCoreConfigSkeleton::ItemPoint*  addItemPoint (const QString& name, QPoint& reference, const QPoint& defaultValue = QPoint(), const QString& key = QString());
    KCoreConfigSkeleton::ItemSize*  addItemSize (const QString& name, QSize& reference, const QSize& defaultValue = QSize(), const QString& key = QString());
    KCoreConfigSkeleton::ItemDateTime*  addItemDateTime (const QString& name, QDateTime& reference, const QDateTime& defaultValue = QDateTime(), const QString& key = QString());
    KCoreConfigSkeleton::ItemStringList*  addItemStringList (const QString& name, QStringList& reference, const QStringList& defaultValue = QStringList(), const QString& key = QString());
    KCoreConfigSkeleton::ItemIntList*  addItemIntList (const QString& name, QList<int>& reference, const QList<int>& defaultValue = QList<int>(), const QString& key = QString());
    KConfig*                config ();
//ig    const KConfig*          config () const;
    void                    setSharedConfig (KSharedConfig::Ptr pConfig);
    KConfigSkeletonItem::List  items () const;
//ig    bool                    isImmutable (const QString& name);
//ig    KConfigSkeletonItem*    findItem (const QString& name);
    virtual bool            useDefaults (bool b);

signals:
    void                    configChanged ();

protected:
    virtual bool            usrUseDefaults (bool b);
    virtual void            usrSetDefaults ();
    virtual void            usrReadConfig ();
    virtual void            usrWriteConfig ();
public:
    ~KCoreConfigSkeleton ();
    bool                    isImmutable (const QString& name) const;
    KConfigSkeletonItem*    findItem (const QString& name) const;
};
// KCoreConfigSkeleton




