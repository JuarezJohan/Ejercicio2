using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    internal class Factura
    {
        public string IDFactura { get; set; }

        // Clave foránea que relaciona con la compra
        public string IDCompra { get; set; }
        public DateTime FechaEmision { get; set; }
        public decimal MontoTotal { get; set; }

        // Propiedad de navegación
        public Compra Compra { get; set; }
    }
}
