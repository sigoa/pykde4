// Copyright 2009 Simon Edwards <simon@simonzone.com>

//                 Generated by twine2

// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU Library General Public License as
// published by the Free Software Foundation; either version 2, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details

// You should have received a copy of the GNU Library General Public
// License along with this program; if not, write to the
// Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

class KCurrencyCode
{
%TypeHeaderCode
#include <kcurrencycode.h>
%End

public:
    enum CurrencyStatus
    {
        ActiveCurrency,
        SuspendedCurrency,
        ObsoleteCurrency
    };
    typedef QFlags<KCurrencyCode::CurrencyStatus> CurrencyStatusFlags;
    explicit                KCurrencyCode (const QString& isoCurrencyCode, const QString& language = QString());
    explicit                KCurrencyCode (const QFileInfo& currencyCodeFile, const QString& language = QString());
                            KCurrencyCode (const KCurrencyCode& rhs);
    virtual ~KCurrencyCode ();
    QString                 isoCurrencyCode () const;
    QString                 isoCurrencyCodeNumeric () const;
    QString                 name () const;
    QString                 isoName () const;
    KCurrencyCode::CurrencyStatus  status () const;
    QDate                   dateIntroduced () const;
    QDate                   dateSuspended () const;
    QDate                   dateWithdrawn () const;
    QStringList             symbolList () const;
    QString                 defaultSymbol () const;
    QString                 unambiguousSymbol () const;
    bool                    hasSubunits () const;
    bool                    hasSubunitsInCirculation () const;
    QString                 subunitSymbol () const;
    int                     subunitsPerUnit () const;
    int                     decimalPlaces () const;
    QStringList             countriesUsingCurrency () const;
    bool                    isValid () const;
//ig    static bool             isValid (const QString& currencyCode, KCurrencyCode::CurrencyStatusFlags currencyStatus = CurrencyStatusFlags(ActiveCurrency|SuspendedCurrency|ObsoleteCurrency));
//ig    static QStringList      allCurrencyCodesList (KCurrencyCode::CurrencyStatusFlags currencyStatus = CurrencyStatusFlags(ActiveCurrency|SuspendedCurrency|ObsoleteCurrency));
//force
    static bool             isValid (const QString& currencyCode, KCurrencyCode::CurrencyStatusFlags currencyStatus);
    static QStringList      allCurrencyCodesList (KCurrencyCode::CurrencyStatusFlags currencyStatus);
//end
    static QString          currencyCodeToName (const QString& currencyCode, const QString& language = QString());
};
