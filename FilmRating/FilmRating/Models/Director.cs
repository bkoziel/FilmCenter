using System;
using System.Collections.Generic;

namespace FilmRating.Models
{
    public class Director
    {

        public int DirectorId { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public DateTime Birthday { get; set; }
        public virtual ICollection<Film> Film { get; set; }


    }
}