/*\
|*|
|*|  :: cookies.js ::
|*|  https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie/Simple_document.cookie_framework
|*|
|*|
|*|  A complete cookies reader/writer framework with full unicode support.
|*|
|*|  Revision #1 - September 4, 2014
|*|
|*|  https://developer.mozilla.org/en-US/docs/Web/API/document.cookie
|*|  https://developer.mozilla.org/User:fusionchess
|*|
|*|  This framework is released under the GNU Public License, version 3 or later.
|*|  http://www.gnu.org/licenses/gpl-3.0-standalone.html
|*|
|*|  Syntaxes:
|*|
|*|  * docCookies.setItem(name, value[, end[, path[, domain[, secure]]]])
|*|  * docCookies.getItem(name)
|*|  * docCookies.removeItem(name[, path[, domain]])
|*|  * docCookies.hasItem(name)
|*|  * docCookies.keys()
|*|
|*|
|*|  Example usage:
|*|
|*|     docCookies.setItem("test0", "Hello world!");
|*|     docCookies.setItem("test1", "Unicode test: \u00E0\u00E8\u00EC\u00F2\u00F9", Infinity);
|*|     docCookies.setItem("test2", "Hello world!", new Date(2020, 5, 12));
|*|     docCookies.setItem("test3", "Hello world!", new Date(2027, 2, 3), "/blog");
|*|     docCookies.setItem("test4", "Hello world!", "Wed, 19 Feb 2127 01:04:55 GMT");
|*|     docCookies.setItem("test5", "Hello world!", "Fri, 20 Aug 88354 14:07:15 GMT", "/home");
|*|     docCookies.setItem("test6", "Hello world!", 150);
|*|     docCookies.setItem("test7", "Hello world!", 245, "/content");
|*|     docCookies.setItem("test8", "Hello world!", null, null, "example.com");
|*|     docCookies.setItem("test9", "Hello world!", null, null, null, true);
|*|     docCookies.setItem("test1;=", "Safe character test;=", Infinity);
|*|     
|*|     alert(docCookies.keys().join("\n"));
|*|     alert(docCookies.getItem("test1"));
|*|     alert(docCookies.getItem("test5"));
|*|     docCookies.removeItem("test1");
|*|     docCookies.removeItem("test5", "/home");
|*|     alert(docCookies.getItem("test1"));
|*|     alert(docCookies.getItem("test5"));
|*|     alert(docCookies.getItem("unexistingCookie"));
|*|     alert(docCookies.getItem());
|*|     alert(docCookies.getItem("test1;="));
|*|
\*/

var docCookies = {
    getItem: function (sKey) {
        if (!sKey) { return null; }
        return decodeURIComponent(document.cookie.replace(new RegExp("(?:(?:^|.*;)\\s*" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*([^;]*).*$)|^.*$"), "$1")) || null;
    },
    setItem: function (sKey, sValue, vEnd, sPath, sDomain, bSecure) {
        if (!sKey || /^(?:expires|max\-age|path|domain|secure)$/i.test(sKey)) { return false; }
        var sExpires = "";
        if (vEnd) {
            switch (vEnd.constructor) {
                case Number:
                    sExpires = vEnd === Infinity ? "; expires=Fri, 31 Dec 9999 23:59:59 GMT" : "; max-age=" + vEnd;
                    break;
                case String:
                    sExpires = "; expires=" + vEnd;
                    break;
                case Date:
                    sExpires = "; expires=" + vEnd.toUTCString();
                    break;
            }
        }
        document.cookie = encodeURIComponent(sKey) + "=" + encodeURIComponent(sValue) + sExpires + (sDomain ? "; domain=" + sDomain : "") + (sPath ? "; path=" + sPath : "") + (bSecure ? "; secure" : "");
        return true;
    },
    removeItem: function (sKey, sPath, sDomain) {
        if (!this.hasItem(sKey)) { return false; }
        document.cookie = encodeURIComponent(sKey) + "=; expires=Thu, 01 Jan 1970 00:00:00 GMT" + (sDomain ? "; domain=" + sDomain : "") + (sPath ? "; path=" + sPath : "");
        return true;
    },
    hasItem: function (sKey) {
        if (!sKey) { return false; }
        return (new RegExp("(?:^|;\\s*)" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=")).test(document.cookie);
    },
    keys: function () {
        var aKeys = document.cookie.replace(/((?:^|\s*;)[^\=]+)(?=;|$)|^\s*|\s*(?:\=[^;]*)?(?:\1|$)/g, "").split(/\s*(?:\=[^;]*)?;\s*/);
        for (var nLen = aKeys.length, nIdx = 0; nIdx < nLen; nIdx++) { aKeys[nIdx] = decodeURIComponent(aKeys[nIdx]); }
        return aKeys;
    }
};