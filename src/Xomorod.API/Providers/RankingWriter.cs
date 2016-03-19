using System;
using Xomorod.API.Providers.ErrorControlSystem;
using Xomorod.Helper;

namespace Xomorod.API.Providers
{
    public static class RankingWriter
    {
        public static void ReadWebSiteRanking()
        {
            try
            {
                using (var alexa = new Alexa("xomorod.com"))
                {
                    AdoManager.DataAccessObject.GetFromQuery($"EXEC sp_TrafficRankings_Insert @GlobalRank = {alexa.GetGlobalRanking()}, @IranRank = {alexa.GetLocalRanking()}");
                }
            }
            catch (Exception ex)
            {
                ex.RaiseError("API.Xomorod.com");
            }
        }
    }
}
