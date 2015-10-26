using System.Globalization;
using Xomorod.Properties;

namespace Xomorod
{
    public static class LocalizationApi
    {
        public static string GetValue(string key)
        {
            return localization.ResourceManager.GetString(key);
        }

        public static string GetValue(string key, string culture)
        {
            return localization.ResourceManager.GetString(key, CultureInfo.GetCultureInfo(culture));
        }
    }
}
