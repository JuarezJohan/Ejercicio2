using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    internal class Compra
    {
        public string IDCompra { get; set; }
        public DateTime FechaCompra { get; set; }

        // Claves foráneas
        public int DNI { get; set; }
        public int IDPedido { get; set; }
        public int IDProducto { get; set; }

        // Propiedades de navegación
        public Clientes Cliente { get; set; }
        public Pedidos Pedido { get; set; }
        public Productos Producto { get; set; }

        // Relación: cada compra puede tener una factura asociada
        public Factura Factura { get; set; }
    }
}
