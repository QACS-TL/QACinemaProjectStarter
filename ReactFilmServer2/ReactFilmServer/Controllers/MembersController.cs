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
    public class MembersController : ControllerBase
    {
        private readonly EFFilmsDBFirst _context;

        public MembersController()
        {
            _context = new EFFilmsDBFirst();
        }

        //// GET: api/Members/5
        [HttpGet("{id}")]
        public  Member GetMember(int id)
        {
            var member = _context.GetMember(id);
            return member;
        }

        // POST: api/Members
        [HttpPost]
        public ActionResult<Member> PostMember(Member member)
        {
            _context.PostMember(member);
            return CreatedAtAction("GetMember", new { member.id }, member);
        }
     }
}
