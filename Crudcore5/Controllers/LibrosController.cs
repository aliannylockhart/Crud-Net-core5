using Crudcore5.Data;
using Crudcore5.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Crudcore5.Controllers
{
    public class LibrosController : Controller
    {   //Este es el metodo para poder usar la base de datos en el controlador 
        private readonly ApplicationDbContext _context;
        //Aqui hize el construtor para inicializar la base de datos
        public LibrosController(ApplicationDbContext contex)
        {
            _context = contex;

        }
        //HTTP get Index
        public IActionResult Index()
        {
            IEnumerable<Libro> listaLibros = _context.Libro;
            return View(listaLibros);
        }
        //HTTP get Create
        public IActionResult Create()
        {
            return View();
        }
        //HTTP post Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Libro libro)
        {
            if (ModelState.IsValid)
            {
                _context.Libro.Add(libro);
                _context.SaveChanges();

                TempData["mensaje"] = "El libro se a creado correctamente";

                return RedirectToAction("Index");
            }



            return View();
        }
        //HTTP GET EDIT
        public  IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            //optener Los libros

            var libro = _context.Libro.Find(id);
            if (libro== null)
            {
                return NotFound();
            }
           
            return View(libro);
        }
        //HTTP post EDIT
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Libro libro)
        {
            if (ModelState.IsValid)
            {
                _context.Libro.Update(libro);
                _context.SaveChanges();

                TempData["mensaje"] = "El libro se a Actualizado correctamente";

                return RedirectToAction("Index");
            }



            return View();
        }
        //HTTP GET Delete
        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            //optener Los libros

            var libro = _context.Libro.Find(id);
            if (libro == null)
            {
                return NotFound();
            }

            return View(libro);
        }
        //HTTP post Delete
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteLibro(int? id)
        {
            //ontener el libro por id

            var libro = _context.Libro.Find(id);
            if (libro == null)
            {
                return NotFound();
            }
            _context.Libro.Remove(libro);
             _context.SaveChanges();
            TempData["mensaje"] = "El libro se a creado correctamente";
            return RedirectToAction("Index");
            
        }



    }
}
