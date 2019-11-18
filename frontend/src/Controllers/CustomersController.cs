using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using frontend.Models;
using frontend.src.Models;

namespace frontend.Controllers
{
    public class CustomersController : Controller
    {
        private readonly MyAppDbContext context = null;

        public CustomersController(MyAppDbContext context)
        {
            this.context = context;
        }

        public IActionResult Index()
        {
            var customers = this.context.Customers.ToList();
            return View(customers);
        }
    }
}
