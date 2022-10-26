using Microsoft.EntityFrameworkCore;

namespace FilmsDataLayer.Models
{
    public class FilmsContext: DbContext
    {
        public FilmsContext()
        {

        }

        public FilmsContext(DbContextOptions<FilmsContext> options)
            : base(options)
        {
        }

        public DbSet<Film> Films { get; set; } = null!;
        public DbSet<Opening> Openings { get; set; } = null!;
        public DbSet<Member> Members { get; set; } = null!;
        public DbSet<FilmImage> FilmImages { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=(local);Initial Catalog=Films;trusted_connection=true");
            }
        }

    }


}
