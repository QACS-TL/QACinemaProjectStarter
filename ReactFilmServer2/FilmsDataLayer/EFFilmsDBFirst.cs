using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using FilmsDataLayer.Models;

namespace FilmsDataLayer
{
    public class EFFilmsDBFirst
    {
        public List<Opening> GetOpenings()
        {
            using (FilmsContext db = new FilmsContext())
            {
                return db.Openings.ToList();
            }
        }

        //Demonstrate Asynchronous code
        public async Task<ActionResult<List<Opening>>> GetOpeningsAsync()
        {
            using (FilmsContext db = new FilmsContext())
            {
                return await db.Openings.ToListAsync();
            }
        }

        public List<FilmImage> GetFilmImages()
        {
            using (FilmsContext db = new FilmsContext())
            {
                return db.FilmImages.ToList();
            }
        }

        public FilmImage GetFilmImage(int filmImageId)
        {
            using (FilmsContext db = new FilmsContext())
            {
                return db.FilmImages.SingleOrDefault(fi => fi.id == filmImageId);
            }
        }

        public List<Film> GetFilms()
        {
            using (FilmsContext db = new FilmsContext())
            {
                return db.Films.ToList();
            }
        }

        // GET: api/Films/5
        [HttpGet("filmsbystatus/{status}")]
        public IEnumerable<Film> GetFilmsByStatus(int status)
        {
            List<Film> films = null;
            using (FilmsContext db = new FilmsContext())
            {
                films = db.Films.Where(f => f.FilmStatus == status).ToList<Film>();
            }
            return films;
        }

        public Film GetFilm(int filmId)
        {
            using (FilmsContext db = new FilmsContext())
            {
                return db.Films.SingleOrDefault(f => f.id == filmId);
            }
        }

        public Member GetMember(int memberId)
        {
            using (FilmsContext db = new FilmsContext())
            {
                return db.Members.SingleOrDefault(m => m.id == memberId);
            }
        }

        public void PostMember(Member member)
        {
            using (FilmsContext db = new FilmsContext())
            {
                db.Members.Add(member);
                db.SaveChanges();

                
            }
        }
    }
}