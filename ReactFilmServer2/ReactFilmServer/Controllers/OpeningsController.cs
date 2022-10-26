#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using FilmsDataLayer.Models;
using Newtonsoft.Json.Linq;
using System.Text;
using FilmsDataLayer;

namespace ReactFilmServer.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OpeningsController : ControllerBase
    {
        private readonly EFFilmsDBFirst _context;

        public OpeningsController()
        {
            _context = new EFFilmsDBFirst();
        }

        //Demonstrate asynchronous code
        [HttpGet]
        public async Task<ActionResult<List<Opening>>> GetOpenings()
        {
            ActionResult<List<Opening>> openings = await _context.GetOpeningsAsync();
            return openings;
        }
    }
}
