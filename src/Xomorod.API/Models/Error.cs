using System;
using System.ComponentModel.DataAnnotations;

namespace Xomorod.API.Models
{
    public class Error
    {
        [Required]
        public string Message { get; set; }

        public string ErrorType { get; set; }

        public string ExtraData { get; set; }

        [Required]
        public string AppName { get; set; }

        public string Version { get; set; }
    }
}
