using Harshil_WebMobi.Data;
using Harshil_WebMobi.Interface;
using Harshil_WebMobi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Harshil_WebMobi.DAL
{
    public class ProductRepository : IProductRepository
    {
        private ProductContext _productContext;

        public ProductRepository(ProductContext productContext)
        {
            this._productContext = productContext;
        }

        public void DeleteConfirmed(int id)
        {
            _productContext.Product.Remove(_productContext.Product.Single(prod => prod.Id == id));
        }

        public Product GetProductById(int id)
        {
            return _productContext.Product.Single(prod => prod.Id == id);
        }

        public IEnumerable<Product> GetProducts()
        {
            return _productContext.Product.ToList();
        }

        public void InsertProduct(Product product)
        {
            _productContext.Product.Add(product);
        }

        public bool ProductExists(int id)
        {
            Product product = _productContext.Product.Single(prod => prod.Id == id);
            if (product == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public void SaveChages()
        {
            _productContext.SaveChanges();
        }

        public void UpdateProduct(Product product)
        {
            _productContext.Product.Update(product);
        }
    }
}
