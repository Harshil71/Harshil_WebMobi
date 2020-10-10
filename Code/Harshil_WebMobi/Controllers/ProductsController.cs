using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Harshil_WebMobi.Data;
using Harshil_WebMobi.Models;
using Harshil_WebMobi.Interface;
using Harshil_WebMobi.DAL;

namespace Harshil_WebMobi.Controllers
{
    public class ProductsController : Controller
    {
        private IProductRepository _productRepository;

        public ProductsController(ProductContext context)
        {
            this._productRepository = new ProductRepository(context);
        }

        // GET: Products
        public ActionResult Index()
        {
            return View(_productRepository.GetProducts());
        }

        // GET: Products/Details/5
        public ActionResult Details(int id)
        {
            return View(_productRepository.GetProductById(id));
        }

        // GET: Products/Create
        public ActionResult Create()
        {
            return View(new Product());
        }

        // POST: Products/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Product product)
        {
            if (ModelState.IsValid)
            {
                _productRepository.InsertProduct(product);
                _productRepository.SaveChages();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                return NotFound();
            }
        }

        // GET: Products/Edit/5
        public ActionResult Edit(int id)
        {
            return View(_productRepository.GetProductById(id));
        }

        // POST: Products/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Product product)
        {
            if (ModelState.IsValid)
            {
                _productRepository.UpdateProduct(product);
                _productRepository.SaveChages();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                return NotFound();
            }
        }

        // GET: Products/Delete/5
        public ActionResult Delete(int id)
        {
            return View(_productRepository.GetProductById(id));
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            if (ModelState.IsValid)
            {
                _productRepository.DeleteConfirmed(id);
                _productRepository.SaveChages();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                return NotFound();
            }
        }
        [HttpPost]
        private bool ProductExists(int id)
        {
            return (_productRepository.ProductExists(id));
        }
    }
}
