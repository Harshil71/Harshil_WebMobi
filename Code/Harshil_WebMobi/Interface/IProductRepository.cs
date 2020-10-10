using Harshil_WebMobi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Harshil_WebMobi.Interface
{
    interface IProductRepository
    {
        IEnumerable<Product> GetProducts();
        Product GetProductById(int id);
        void InsertProduct(Product product);
        void UpdateProduct(Product product);
        //void DeleteProduct(int productId);
        void DeleteConfirmed(int id);
        bool ProductExists(int id);
        void SaveChages();
    }
}
