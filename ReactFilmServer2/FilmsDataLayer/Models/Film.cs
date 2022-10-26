using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FilmsDataLayer.Models
{
    [Table ("Films")]
    public class Film
    {
        [Column ("id")]
        [Key]
        public int id { get; set; }
        public string? Title { get; set; }
        public string? Synopsis { get; set; }
        [Column("Cast")]
        public string? Cast { get; set; }
        public string? Directors { get; set; }
        public string? ShowingTimes { get; set; }
        [DataType(DataType.Date)]
        [Display(Name = "Release Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime? ReleaseDate { get; set; }
        public int? FilmStatus { get; set; }
        [Column("Image_ID")]
        public int? Image_id { get; set; }
    }
}
