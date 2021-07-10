using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Colegio.Aplicacion.Asistencia
{
    public class Asistencias
    {
        public int IdAsistencia { get; set; }
        public string CedulaEstudiante { get; set; }
        public DateTime FechaAsistencia { get; set; }
        public Boolean TomarAsistencia { get; set; }
    }
}