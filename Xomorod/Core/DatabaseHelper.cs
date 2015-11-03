using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Xomorod.Core
{

    public class DatabaseHelper
    {
        private static string _connectionString = null;
        public static string ConnectionString
        {
            get
            {
                if (string.IsNullOrEmpty(_connectionString))
                {
#if DEBUG
                    string connStrName = "XomorodConnectionString";
#else
                    string connStrName = "XomorodServerConnectionString";
#endif
                    ConnectionStringSettings mySetting = ConfigurationManager.ConnectionStrings[connStrName];
                    if (mySetting == null || string.IsNullOrEmpty(mySetting.ConnectionString))
                    {
                        throw new Exception("Fatal error: missing connecting string in web.config file");
                    }
                    _connectionString = mySetting.ConnectionString;
                }
                return _connectionString;
            }
        }
    }
}
