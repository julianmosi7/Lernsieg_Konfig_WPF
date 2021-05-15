namespace LernsiegModelLib
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Teacher
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Title { get; set; }

        public int SchoolNumber { get; set; }

        public int? SchoolId { get; set; }

        public virtual School School { get; set; }
    }
}
