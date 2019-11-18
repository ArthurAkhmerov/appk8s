using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace frontend.src.Models
{
    public class Customer
    {
        public int Id { get; set;}
        [Required]
        [StringLength(200)]
        public string Name { get; set; }
        [Required]
        [StringLength(16)]
        public string VAT { get; set; }
        public bool Enabled { get; set; }
    }
}
