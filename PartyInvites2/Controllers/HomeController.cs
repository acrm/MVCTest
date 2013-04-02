using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PartyInvites2.Models;

namespace PartyInvites2.Controllers
{
    public class HomeController : Controller
    {
        public ViewResult Index()
        {
            int hour = DateTime.Now.Hour;
            ViewData["greeting"] = hour < 12 ? "Good morning" : "Good evening";
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ViewResult RSVPForm()
        {
            return View();
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ViewResult RSVPForm(GuestResponse guestResponse)
        {
            return View("Thanks", guestResponse);
        }
    }
}
