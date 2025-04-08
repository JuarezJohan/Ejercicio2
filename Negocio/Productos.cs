using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    internal class Productos
    {
        public int IDProducto { get; set; }
        public string NombreProducto { get; set; }
        public int Stock { get; set; }
        public decimal Precio { get; set; }

        // Relación con Proveedor: clave foránea
        public int IDProveedor { get; set; }
        public Proveedor Proveedor { get; set; }
    }
}
