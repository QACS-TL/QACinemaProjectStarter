using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FilmsDataLayer.Models
{
    [Table("FilmImages")]
    public class FilmImage
    {
        [Column("id")]
        [Key]
        public int id { get; set; }
        public string? Title { get; set; }
        [Column("Src")]
        public string? Src { get; set; }
        [Column("Alt")]
        public string? Alt { get; set; }

    }
}
