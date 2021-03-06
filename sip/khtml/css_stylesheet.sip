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
#include <css_stylesheet.h>
%End

namespace DOM
{

class StyleSheet
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            StyleSheet ();
                            StyleSheet (const DOM::StyleSheet& other);
//ig                            StyleSheet (StyleSheetImpl* impl);
    DOM::DOMString          type () const;
    bool                    disabled () const;
    void                    setDisabled (bool);
    DOM::Node               ownerNode () const;
    DOM::StyleSheet         parentStyleSheet () const;
    DOM::DOMString          href () const;
    DOM::DOMString          title () const;
    DOM::MediaList          media () const;
    KUrl                    baseUrl ();
    bool                    isCSSStyleSheet () const;
//ig    StyleSheetImpl*         handle () const;
    bool                    isNull () const;
    ~StyleSheet ();
};
// StyleSheet


class CSSException
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            CSSException (unsigned short _code);
                            CSSException (const DOM::CSSException& other);
    unsigned short code;

    enum ExceptionCode
    {
        SYNTAX_ERR,
        INVALID_MODIFICATION_ERR,
        _EXCEPTION_OFFSET,
        _EXCEPTION_MAX
    };

    ~CSSException ();
    DOM::DOMString          codeAsString () const;
    static DOM::DOMString   codeAsString (int cssCode);
    static bool             isCSSExceptionCode (int exceptioncode);
};
// CSSException


class CSSStyleSheet : DOM::StyleSheet
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            CSSStyleSheet ();
                            CSSStyleSheet (const DOM::CSSStyleSheet& other);
                            CSSStyleSheet (const DOM::StyleSheet& other);
//ig                            CSSStyleSheet (CSSStyleSheetImpl* impl);
    DOM::CSSRule            ownerRule () const;
    DOM::CSSRuleList        cssRules () const;
    unsigned long           insertRule (const DOM::DOMString& rule, unsigned long index);
    void                    deleteRule (unsigned long index);
    DOM::DOMString          charset () const;
    ~CSSStyleSheet ();
};
// CSSStyleSheet


class StyleSheetList
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            StyleSheetList ();
                            StyleSheetList (const DOM::StyleSheetList& other);
//ig                            StyleSheetList (StyleSheetListImpl* impl);
    unsigned long           length () const;
    DOM::StyleSheet         item (unsigned long index);
//ig    StyleSheetListImpl*     handle () const;
    bool                    isNull () const;
    ~StyleSheetList ();
};
// StyleSheetList


class MediaList
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            MediaList ();
                            MediaList (const DOM::MediaList& other);
//ig                            MediaList (MediaListImpl* impl);
    DOM::DOMString          mediaText () const;
    void                    setMediaText (const DOM::DOMString& value);
    unsigned long           length () const;
    DOM::DOMString          item (unsigned long index) const;
    void                    deleteMedium (const DOM::DOMString& oldMedium);
    void                    appendMedium (const DOM::DOMString& newMedium);
//ig    MediaListImpl*          handle () const;
    bool                    isNull () const;
    ~MediaList ();
};
// MediaList


class LinkStyle
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            LinkStyle ();
                            LinkStyle (const DOM::LinkStyle& other);
    DOM::StyleSheet         sheet ();
    bool                    isNull () const;
    ~LinkStyle ();
};
// LinkStyle


class DocumentStyle
{
%TypeHeaderCode
#include <css_stylesheet.h>
%End


public:
                            DocumentStyle ();
                            DocumentStyle (const DOM::DocumentStyle& other);
    DOM::StyleSheetList     styleSheets () const;
    DOM::DOMString          preferredStylesheetSet () const;
    DOM::DOMString          selectedStylesheetSet () const;
    void                    setSelectedStylesheetSet (const DOM::DOMString& aString);
    bool                    isNull () const;
    ~DocumentStyle ();
};
// DocumentStyle

};
// DOM


