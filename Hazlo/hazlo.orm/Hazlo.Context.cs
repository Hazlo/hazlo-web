﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hazlo.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class hazloEntities : DbContext
    {
        public hazloEntities()
            : base("name=hazloEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<base_contact> base_contact { get; set; }
        public DbSet<base_player> base_player { get; set; }
        public DbSet<base_team> base_team { get; set; }
        public DbSet<base_team_player_map> base_team_player_map { get; set; }
    }
}
