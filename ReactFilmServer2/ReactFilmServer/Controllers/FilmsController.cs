#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FilmsDataLayer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using FilmsDataLayer.Models;

namespace ReactFilmServer.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FilmsController : ControllerBase
    {
        private readonly EFFilmsDBFirst _context;

        public FilmsController()
        {
            _context = new EFFilmsDBFirst();
        }

        // GET: api/Films
        [HttpGet]
        public IEnumerable<Film> GetFilms()
        {
            return  _context.GetFilms();
        }

        // GET: api/FilmsByStatus/status
        [HttpGet("filmsbystatus/{status}")]
        public IEnumerable<Film> GetFilmsByStatus(int status)
        {
            return _context.GetFilmsByStatus(status);
        }


        // GET: api/Film/5
        [HttpGet("{id}")]
        public Film GetFilm(int id)
        {
            var film = _context.GetFilm(id);
            return film;
        }
    }
}
