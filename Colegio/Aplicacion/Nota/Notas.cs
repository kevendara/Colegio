using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Colegio.Aplicacion.Nota
{
    public class Notas
    {
        public int IdNota { get; set; }
        public string CedulaEstudiante { get; set; }
        public int IdQuimestre { get; set; }
        public double Nota1 { get; set; }
        public double Nota2 { get; set; }
        public double Nota3 { get; set; }
        public double Nota4 { get; set; }
    }
}