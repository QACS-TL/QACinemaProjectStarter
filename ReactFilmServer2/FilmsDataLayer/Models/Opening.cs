
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace FilmsDataLayer.Models
{
    [Table("Openings")]
    public class Opening
    {
        [Key]
        [Column("id")]
        public int id { get; set; }
        [Column("day")]
        public string? day { get; set; }
        [Column("Opening")]
        public string? opening { get; set; }
        [Column("Close")]
        public string? close { get; set; }

    }
}
