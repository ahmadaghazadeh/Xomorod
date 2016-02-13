using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Http;

namespace Xomorod.API.Providers
{
    /// <summary>
    /// Some extension methods to provide some many works to easily.
    /// </summary>
    public static class ExtensionsHelper
    {
        /// <summary>
        /// Returns a dictionary of QueryStrings that's easier to work with 
        /// than GetQueryNameValuePairs KeyValuePairs collection.
        /// 
        /// If you need to pull a few single values use GetQueryString instead.
        /// </summary>
        /// <param name="request"><seealso cref="HttpRequestMessage"/></param>
        /// <returns><see cref="Dictionary{TKey,TValue}"/></returns>
        public static Dictionary<string, string> GetQueryStrings(this HttpRequestMessage request)
        {
            return request.GetQueryNameValuePairs()
                          .ToDictionary(kv => kv.Key, kv => kv.Value,
                               StringComparer.OrdinalIgnoreCase);
        }
    }
}
