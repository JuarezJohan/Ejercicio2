using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    internal class Pedidos
    {
        public int IDPedido { get; set; }
        public DateTime FechaPedido { get; set; }
        public string Direccion { get; set; }
        public string DescripcionPedido { get; set; }
    }
}
