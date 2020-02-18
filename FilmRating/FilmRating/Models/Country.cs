using System;
using System.Collections.Generic;

namespace FilmRating.Models
{
    public class Country
    {
        public int CountryId { get; set; }
        public string Name { get; set; }
        public virtual ICollection<Film> Film { get; set; }

    }
}