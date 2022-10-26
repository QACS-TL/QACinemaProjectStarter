using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FilmsDataLayer.Models
{
    [Table("Members")]
    public class Member
    {
        [Column("id")]
        [Key]
        public int id { get; set; }

        [Column("Title")]
        public string? title { get; set; }

        [Column("FirstName")]
        public string? firstName { get; set; }

        [Column("LastName")]
        public string? lastName { get; set; }

        [Column("Email")]
        public string? email { get; set; }

        [Column("PhoneNumber")]
        public string? phoneNumber { get; set; }

        [Column("DateOfBirth")]
        public DateTime? dob { get; set; }

        [Column("Gender")]
        public string? gender { get; set; }
    }
}
