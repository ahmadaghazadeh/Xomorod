using System;
using System.Configuration;
using Xomorod.Models;

namespace Xomorod.Core
{

    public static class DatabaseHelper
    {
        private static string _connectionString = null;
        public static string ConnectionString
        {
            get
            {
                if (!string.IsNullOrEmpty(_connectionString)) return _connectionString;
#if DEBUG
                string connStrName = "XomorodConnectionString";
#else
                    string connStrName = "XomorodServerConnectionString";
#endif
                ConnectionStringSettings mySetting = ConfigurationManager.ConnectionStrings[connStrName];
                if (string.IsNullOrEmpty(mySetting?.ConnectionString))
                {
                    throw new Exception("Fatal error: missing connecting string in web.config file");
                }
                _connectionString = mySetting.ConnectionString;
                return _connectionString;
            }
        }

        public static XomorodDataContext OrmDataContext => new XomorodDataContext(ConnectionString);
    }
}
