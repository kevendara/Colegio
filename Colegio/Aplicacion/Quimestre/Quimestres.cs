using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Colegio.Aplicacion.Quimestre
{
    public class Quimestres
    {
        public int IdQuimestre { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public string NumeroQuimestre { get; set; }
    }
}