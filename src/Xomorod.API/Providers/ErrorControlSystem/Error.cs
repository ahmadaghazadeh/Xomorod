using System.ComponentModel.DataAnnotations;

namespace Xomorod.API.Providers.ErrorControlSystem
{
    public class Error
    {
        [Required]
        public string Message { get; set; }

        public string ErrorType { get; set; }

        public string ModuleName { get; set; }

        public string Method { get; set; }

        public string StackTrace { get; set; }

        public string Line { get; set; }
        public string Column { get; set; }

        public string ExtraData { get; set; }

        [Required]
        public string AppName { get; set; }

        public string Version { get; set; }

        public string HeaderIcon { get; set; }
    }
}
