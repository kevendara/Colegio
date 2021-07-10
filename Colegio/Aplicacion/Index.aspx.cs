using Colegio.Aplicacion.Estudiante;
using Colegio.Aplicacion.Maestro;
using Colegio.Aplicacion.Materia;
using Colegio.Aplicacion.Nota;
using Colegio.Aplicacion.Quimestre;
using Colegio.Aplicacion.Asistencia;
using Colegio.Aplicacion.Aula;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Colegio.Aplicacion
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerarGridEstudiantes();
            GenerarGridMestros();
            GenerarGridMaterias();
            GenerarGridNotas();
            GenerarGridQuimestre();
            GenerarGridAsistencia();
            GenerarGridAula();
        }

        // Pestaña Estudiantes
        public List<Estudiantes> GenerarDataEstudiante()
        {
            List<Estudiantes> estudiantes = new List<Estudiantes>();
            for (int i = 0; i < 10; i++)
            {
                Estudiantes estudiante = new Estudiantes
                {
                    CedulaEstudiante = "1001000100" + i,
                    NombresEstudiante = "Ke" + i,
                    ApellidosEstudiante = "End" + i,
                    TelefonoEstudiante = "090909090" + i
                };
                estudiantes.Add(estudiante);
            }
            return estudiantes;
        }
        public void GenerarGridEstudiantes()
        {
            store_estudiantes.DataSource = GenerarDataEstudiante();
            store_estudiantes.DataBind();
        }

        // Pestaña Maestros
        public List<Maestros> GenerarDataMaestros()
        {
            List<Maestros> maestros = new List<Maestros>();
            for (int i = 0; i < 10; i++)
            {
                Maestros maestro = new Maestros
                {
                    CedulaMaestro = "1038963653" + i,
                    NombresMaestro = "DFS" + i,
                    ApellidosMaestro = "JOE" + i,
                    TelefonoMaestro = "098080365" + i
                };
                maestros.Add(maestro);
            }
            return maestros;
        }
        public void GenerarGridMestros()
        {
            store_maestros.DataSource = GenerarDataMaestros();
            store_maestros.DataBind();
        }

        // Pestaña Materias
        public List<Materias> GenerarDataMaterias()
        {
            List<Materias> materias = new List<Materias>();
            for (int i = 0; i < 10; i++)
            {
                Materias materia = new Materias
                {
                    IdMateria = i,
                    CedulaMaestro = "1038963653" + i,
                    CedulaEstudiante = "1001000100" + i,
                    IdAula = 10 + i,
                    NombreMateria = "MATERIA " + i
                };
                materias.Add(materia);
            }
            return materias;
        }
        public void GenerarGridMaterias()
        {
            store_materias.DataSource = GenerarDataMaterias();
            store_materias.DataBind();
        }

        // Pestaña Notas
        public List<Notas> GenerarDataNotas()
        {
            List<Notas> notas = new List<Notas>();
            for (int i = 0; i < 10; i++)
            {
                Notas nota = new Notas
                {
                    IdNota = i,
                    CedulaEstudiante = "1001000100" + i,
                    IdQuimestre = 20 + i,
                    Nota1 = 1.5 + (i / 2),
                    Nota2 = 1.5 + (i / 2),
                    Nota3 = 1.5 + (i / 2),
                    Nota4 = 1.5 + (i / 2)
                };
                notas.Add(nota);
            }
            return notas;
        }
        public void GenerarGridNotas()
        {
            store_notas.DataSource = GenerarDataNotas();
            store_notas.DataBind();
        }

        // Pestaña Quimestre 
        public List<Quimestres> GenerarDataQuimestre()
        {
            List<Quimestres> quimestres = new List<Quimestres>();
            for (int i = 0; i < 10; i++)
            {
                Quimestres quimestre = new Quimestres
                {
                    IdQuimestre = i,
                    FechaInicio = DateTime.Now,
                    FechaFin = DateTime.Now,
                    NumeroQuimestre = (i / 2)+"s"
                };
                quimestres.Add(quimestre);
            }
            return quimestres;
        }
        public void GenerarGridQuimestre()
        {
            store_quimestre.DataSource = GenerarDataQuimestre();
            store_quimestre.DataBind();
        }

        // Pestaña Asistencia
        public List<Asistencias> GenerarDataAsistencia()
        {
            List<Asistencias> asistencias = new List<Asistencias>();
            for (int i = 0; i < 10; i++)
            {
                Asistencias asistencia = new Asistencias
                {
                    IdAsistencia = i,
                    CedulaEstudiante = "1001000100" + i,
                    FechaAsistencia = DateTime.Now,
                    TomarAsistencia = true
                };
                asistencias.Add(asistencia);
            }
            return asistencias;
        }
        public void GenerarGridAsistencia()
        {
            store_asistencia.DataSource = GenerarDataAsistencia();
            store_asistencia.DataBind();
        }

        // Pestaña Aula
        public List<Aulas> GenerarDataAula()
        {
            List<Aulas> aulas = new List<Aulas>();
            for (int i = 0; i < 10; i++)
            {
                Aulas aula = new Aulas
                {
                    IdAula = i+30,
                    NombreAula = "ABC" + i
                };
                aulas.Add(aula);
            }
            return aulas;
        }
        public void GenerarGridAula()
        {
            store_aula.DataSource = GenerarDataAula();
            store_aula.DataBind();
        }
    }
}