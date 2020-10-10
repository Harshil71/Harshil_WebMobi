using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Harshil_WebMobi.Models;

namespace Harshil_WebMobi.Data
{
    public class ProductContext : DbContext
    {
        public ProductContext (DbContextOptions<ProductContext> options)
            : base(options)
        {
        }

        public DbSet<Harshil_WebMobi.Models.Product> Product { get; set; }
    }
}
