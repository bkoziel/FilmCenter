using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FilmRating.Models
{
    public class Film
    {

        public int ID { get; set; }
        public int DirectorID { get; set; }
        public int CountryID { get; set; }
        public string Name { get; set; }
        public DateTime Date { get; set; }
        public double Rate { get; set; }

        public virtual Director Director { get; set; }
        public virtual Country Country { get; set; }
        public virtual ICollection<Genre> Genres { get; set; }
        public virtual ICollection<Prize> Prizes { get; set; }

    }
}