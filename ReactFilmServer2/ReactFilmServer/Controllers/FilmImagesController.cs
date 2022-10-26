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
    public class FilmImagesController : ControllerBase
    {
        private readonly EFFilmsDBFirst _context;

        public FilmImagesController()
        {
            _context = new EFFilmsDBFirst();
        }

        // GET: api/FilmImages
        [HttpGet]
        public IEnumerable<FilmImage> GetFilmImages()
        {
            return  _context.GetFilmImages();
        }

        // GET: api/FilmImages/5
        [HttpGet("{id}")]
        public FilmImage GetFilmImage(int id)
        {
            var filmImage = _context.GetFilmImage(id);
            return filmImage;
        }
    }
}
