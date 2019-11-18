﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace frontend.src.Models
{
    public class MyAppDbContext : DbContext
    {
        public MyAppDbContext(DbContextOptions<MyAppDbContext> options)
            : base(options)
        {
        }

        public DbSet<Customer> Customers { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Customer>().HasData(
                new Customer()
                {
                    Id = 1,
                    Name = "Microsoft",
                    VAT = "IE8256796U",
                    Enabled = true
                },
                new Customer()
                {
                    Id = 2,
                    Name = "Google",
                    VAT = "IE6388047V",
                    Enabled = false
                });
        }
    }
}
