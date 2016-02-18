﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Reflection;

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

        /// <summary>
        /// Get Running library version
        /// </summary>
        /// <returns>Version of application or library as <seealso cref="string"/></returns>
        public static string GetRunningAppVersion()
        {
            try
            {
                Assembly myAsm = Assembly.GetEntryAssembly() ?? Assembly.GetExecutingAssembly();

                var ver = myAsm.GetName().Version;
                var version = $"{ver.Major}.{ver.Minor}.{ver.Build}";

                return version;
            }
            catch (Exception exp)
            {
                // ignored
                return null;
            }
        }

        /// <summary>
        /// Get Running library name
        /// </summary>
        /// <returns>Name of application or library as <seealso cref="string"/></returns>
        public static string GetRunningAppName()
        {
            try
            {
                Assembly myAsm = Assembly.GetEntryAssembly() ?? Assembly.GetExecutingAssembly();
                
                var appName = myAsm?.GetName()?.Name ?? "Xomorod.API";

                if (appName.ToLower() == "mscorlib") appName = "Xomorod.API";

                return appName;
            }
            catch (Exception exp)
            {
                // ignored
                return null;
            }
        }

        
    }
}