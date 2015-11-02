using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Xomorod.Models;

namespace Xomorod.Core
{
    public class HttpHelper
    {

        public static async Task<string> GetDataFrom(string url)
        {

            var githubToken = @"6d282c7b4df9051ae9a8ba268ed068d0a0736699";
            var url = @"https://api.github.com/users/behzadkhosravifar/repos";

            string result = "";

            using (HttpClient client = new HttpClient())
            {
                client.Timeout = TimeSpan.FromSeconds(100);
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage response = await client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    var data = await response.Content.ReadAsStringAsync();
                    var obj = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(data.ToString());
                }
                else
                {

                }
            }

            //using (WebClient webClient = new WebClient())
            //{
            //webClient.DownloadProgressChanged += new DownloadProgressChangedEventHandler(delegate (object sender, DownloadProgressChangedEventArgs e)
            //{
            //    Console.WriteLine("Downloaded:" + e.ProgressPercentage.ToString());
            //});

            //webClient.DownloadFileCompleted += new System.ComponentModel.AsyncCompletedEventHandler
            //    (delegate (object sender, System.ComponentModel.AsyncCompletedEventArgs e)
            //    {
            //        if (e.Error == null && !e.Cancelled)
            //        {
            //            Console.WriteLine("Download completed!");
            //        }
            //    });
            //    result = await webClient.DownloadStringTaskAsync(new Uri(url));
            //}



            return result;
        }
    }
}
