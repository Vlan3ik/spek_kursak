using pristavi_desktop.Core.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Data.DbContext
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Position> Positions { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Debtor> Debtors { get; set; }
        public DbSet<Creditor> Creditors { get; set; }
        public DbSet<EnforcementProceeding> EnforcementProceedings { get; set; }
        public DbSet<SeizedProperty> SeizedProperties { get; set; }
        public DbSet<Court> Courts { get; set; }
        public DbSet<Document> Documents { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("YourConnectionString");
        }
    }
}
