using System;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Xomorod.Helper
{
    public class Alexa
    {
        protected string AlexaGlobalPattern { get; set; }
        protected string AlexaLocalPattern { get; set; }
        protected string AlexaLinksin { get; set; }
        protected string AlexaData { get; set; }

        public string WebSite { get; set; }

        public Alexa(string url)
        {
            WebSite = $"http://www.alexa.com/minisiteinfo/{url}?offset=5&amp;version=alxg_20100607";
            RefreshData();
        }

        private static async Task<string> FetchUrlAsync(string url)
        {
            var downloadedData = new byte[0];
            try
            {
                //Get a data stream from the url
                WebRequest req = WebRequest.Create(url);
                WebResponse response = await req.GetResponseAsync();
                Stream stream = response.GetResponseStream();

                //Download in chuncks
                byte[] buffer = new byte[1024];

                //Get Total Size
                int dataLength = (int)response.ContentLength;

                //Download to memory
                //Note: adjust the streams here to download directly to the hard drive
                MemoryStream memStream = new MemoryStream();
                while (true)
                {
                    //Try to read the data
                    if (stream != null)
                    {
                        int bytesRead = stream.Read(buffer, 0, buffer.Length);

                        if (bytesRead == 0)
                        {
                            break;
                        }
                        else
                        {
                            //Write the downloaded data
                            memStream.Write(buffer, 0, bytesRead);
                        }
                    }
                }

                //Convert the downloaded stream to a byte array
                downloadedData = memStream.ToArray();

                //Clean up
                stream.Close();
                memStream.Close();
            }
            catch (Exception)
            {
                //May not be connected to the internet
                //Or the URL might not exist
                // Raise Error
            }

            string str = System.Text.Encoding.Default.GetString(downloadedData);
            return str;
        }

        private static string FetchUrl(string url)
        {
            var downloadedData = new byte[0];
            try
            {
                //Get a data stream from the url
                WebRequest req = WebRequest.Create(url);
                WebResponse response = req.GetResponse();
                Stream stream = response.GetResponseStream();

                //Download in chuncks
                byte[] buffer = new byte[1024];

                //Get Total Size
                int dataLength = (int)response.ContentLength;

                //Download to memory
                //Note: adjust the streams here to download directly to the hard drive
                MemoryStream memStream = new MemoryStream();
                while (true)
                {
                    //Try to read the data
                    if (stream != null)
                    {
                        int bytesRead = stream.Read(buffer, 0, buffer.Length);

                        if (bytesRead == 0)
                        {
                            break;
                        }
                        else
                        {
                            //Write the downloaded data
                            memStream.Write(buffer, 0, bytesRead);
                        }
                    }
                }

                //Convert the downloaded stream to a byte array
                downloadedData = memStream.ToArray();

                //Clean up
                stream.Close();
                memStream.Close();
            }
            catch (Exception)
            {
                //May not be connected to the internet
                //Or the URL might not exist
                // Raise Error
            }

            string str = System.Text.Encoding.Default.GetString(downloadedData);
            return str;
        }

        public async Task RefreshDataAsync()
        {
            AlexaData = await FetchUrlAsync(WebSite);
        }

        public void RefreshData()
        {
            AlexaData = FetchUrl(WebSite);
        }

        public async Task<long> GetGlobalRankingAsync()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                await RefreshDataAsync();
            }

            AlexaGlobalPattern = Patterns.AlexaGlobalRank;
            // fetch ranking:
            return GetNumber(AlexaGlobalPattern);
        }

        public long GetGlobalRanking()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                RefreshData();
            }

            AlexaGlobalPattern = Patterns.AlexaGlobalRank;
            // fetch ranking:
            return GetNumber(AlexaGlobalPattern);
        }

        public async Task<long> GetLocalRankingAsync()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                await RefreshDataAsync();
            }

            AlexaLocalPattern = Patterns.AlexaLocalRank;
            // fetch ranking:
            return GetNumber(AlexaLocalPattern);
        }

        public long GetLocalRanking()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                RefreshData();
            }

            AlexaLocalPattern = Patterns.AlexaLocalRank;
            // fetch ranking:
            return GetNumber(AlexaLocalPattern);
        }

        public long GetLinksin()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                RefreshData();
            }

            AlexaLinksin = Patterns.AlexaLinksin;
            // fetch ranking:
            return GetNumber(AlexaLinksin);
        }

        public async Task<long> GetLinksinAsync()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                await RefreshDataAsync();
            }

            AlexaLinksin = Patterns.AlexaLinksin;
            // fetch ranking:
            return GetNumber(AlexaLinksin);
        }

        public long GetNumber(string pattern)
        {
            // fetch ranking:
            var reg = new Regex(pattern);
            var match = reg.Match(AlexaData);
            var rank = match.Groups["number"];
            long rankNo = 0;
            long.TryParse(rank.Value.Replace(",", ""), out rankNo);

            return rankNo;
        }
    }

    public static class AlexaExtensions
    {
        public static MvcHtmlString GlobalRanking(this HtmlHelper helper, Alexa alexa)
        {
            var globalRank = alexa.GetGlobalRanking();

            var html =
                "<div class='data up'>" +
               $"<a href='http://www.alexa.com/siteinfo/{alexa.WebSite}#trafficstats' target='_blank'>" +
               $"<img src='http://www.alexa.com/images/icons/globe-sm.png' alt='Global' style='margin-bottom:-2px;'> {globalRank}</a></div>";

            return new MvcHtmlString(html);
        }
        public static MvcHtmlString GlobalRanking(this HtmlHelper helper, string domain)
        {
            var alexa = new Alexa(domain);

            return GlobalRanking(helper, alexa);
        }

        public static MvcHtmlString LocalRanking(this HtmlHelper helper, string domain)
        {
            var alexa = new Alexa(domain);
            return LocalRanking(helper, alexa);
        }
        public static MvcHtmlString LocalRanking(this HtmlHelper helper, Alexa alexa)
        {
            var localRank = alexa.GetLocalRanking();

            var html =
                "<div class='data'>" +
               $"<a href='http://www.alexa.com/siteinfo/{alexa.WebSite}#trafficstats' title='Iran' target='_blank'>" +
               $"<img class='dynamic-icon' src='http://pcache.alexa.com/images/flags/ir.2ac099e190547501704d309d59831d2b.png' alt='Iran Flag'> {localRank}</a></div>";

            return new MvcHtmlString(html);
        }

        public static MvcHtmlString Linksin(this HtmlHelper helper, Alexa alexa)
        {
            var links = alexa.GetLinksin();

            var html =
                "<td class='start' colspan='2'>" +
                $"<div class='data'><a href = 'http://www.alexa.com/site/linksin/{alexa.WebSite}' target='_blank'>{links}</a></div><div class='label'>Sites Linking In</div></td>";

            return new MvcHtmlString(html);
        }
        public static MvcHtmlString Linksin(this HtmlHelper helper, string domain)
        {
            var alexa = new Alexa(domain);
            return Linksin(helper, alexa);
        }
    }
}