using System;
using System.Diagnostics;
using System.IO;
using System.Web.Services;

namespace Xomorod.Core
{
    public static class CdnHelper
    {
        [WebMethod]
        public static string GetCdn(string lib)
        {
            //try
            //{

            //    //#if DEBUG
            //    //            return Resources.local_Resources.ResourceManager.GetString(lib);
            //    //#else
            //    //            return Resources.cdn_Resources.ResourceManager.GetString(lib);
            //    //#endif

            //    var cdn = Resources.cdn_Resources.ResourceManager.GetString(lib);
            //    var local = Resources.local_Resources.ResourceManager.GetString(lib);
            //    string localFullPath = Path.Combine(@"D:\Projecting\Xomorod\Xomorod\", local.Replace(@"/", @"\"));

            //    System.Net.WebClient wc = new System.Net.WebClient();

            //    string cdnWebData = wc.DownloadString(cdn);
            //    string localWebData = File.ReadAllText(localFullPath);

            //    if (!string.IsNullOrEmpty(cdnWebData) && cdnWebData != localWebData)
            //    {
            //        //File.WriteAllText(@"D:\NewCDN\" + local.Replace(@"/", @"\"), cdnWebData);
            //        File.WriteAllText(localFullPath, cdnWebData);

            //    }

            //    return cdn;
            //}
            //catch (Exception ex)
            //{

            //}
            return Resources.cdn_changer.ResourceManager.GetString(lib) == "cdn" 
                ? Resources.cdn_Resources.ResourceManager.GetString(lib) 
                : Resources.local_Resources.ResourceManager.GetString(lib);
        }
    }

}
