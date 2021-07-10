using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Colegio.Aplicacion.Materia
{
    public class Materias
    {
        public int IdMateria { get; set; }
        public string CedulaMaestro { get; set; }
        public string CedulaEstudiante { get; set; }
        public int IdAula { get; set; }
        public string NombreMateria { get; set; }
    }
}