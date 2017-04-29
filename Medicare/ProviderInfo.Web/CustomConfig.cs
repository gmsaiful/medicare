using System.Configuration;

namespace ProviderInfo.Web
{
    public static class CustomConfig
    {
        public static string ProviderServiceUrl = ConfigurationManager.AppSettings["ProviderServiceUrl"];
        public static string AppToken = ConfigurationManager.AppSettings["AppToken"];
    }
}