<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Colegio.Aplicacion.Index" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página Inicio</title>
</head>

<%-- Proyecto consiste en desarrollar un sistema básico de administración de un colegio, 
        que se considere materias, docentes, aulas, alumnos, asistencia y notas quimestrales 
        teniendo en cuenta que cada quimestre debe tener 4  notas. --%>

<body runat="server">
    <ext:ResourceManager runat="server" />
    <ext:Viewport runat="server" Layout="border">
        <Items>
            <ext:GroupTabPanel ID="GroupTabPanel1" runat="server" Region="Center" TabWidth="130" ActiveGroupIndex="0">
                <Groups>
                    <%-- Pestaña Estudiantes --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Estudiantes" Icon="TagBlue" TabTip="Estudiantes" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Cédula" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nombres" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Apellidos" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Teléfono" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>

                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Estudiantes">
                                        <Store>
                                            <ext:Store runat="server" ID="store_estudiantes">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="CedulaEstudiante" />
                                                            <ext:RecordField Name="NombresEstudiante" />
                                                            <ext:RecordField Name="ApellidosEstudiante" />
                                                            <ext:RecordField Name="TelefonoEstudiante" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="cedulaEstudiante" Header="Cédula del Estudiante" Width="250" DataIndex="CedulaEstudiante" />
                                                <ext:Column ColumnID="nombresEstudiante" Header="Nombres del Estudiante" Width="250" DataIndex="NombresEstudiante" />
                                                <ext:Column ColumnID="apellidosEstudiante" Header="Apellidos del Estudiante" Width="250" DataIndex="ApellidosEstudiante" />
                                                <ext:Column ColumnID="telefonoEstudiante" Header="Teléfono del Estudiante" Width="250" DataIndex="TelefonoEstudiante" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Estudiantes" Icon="TagBlue" TabTip="Recursos Estudiantes" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras ingresar nuevas estudiantes." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                    <%-- Pestaña Maestos --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Maestros" Icon="TagBlue" TabTip="Maestros" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Cédula" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nombres" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Apellidos" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Teléfono" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>
                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Maestros" TrackMouseOver="true">
                                        <Store>
                                            <ext:Store ID="store_maestros" runat="server">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="CedulaMaestro" />
                                                            <ext:RecordField Name="NombresMaestro" />
                                                            <ext:RecordField Name="ApellidosMaestro" />
                                                            <ext:RecordField Name="TelefonoMaestro" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="cedulaMaestro" Header="Cédula del Maestro" Width="250" DataIndex="CedulaMaestro" />
                                                <ext:Column ColumnID="nombresMaestro" Header="Nombres del Maestro" Width="250" DataIndex="NombresMaestro" />
                                                <ext:Column ColumnID="apellidosMaestro" Header="Apellidos del Maestro" Width="250" DataIndex="ApellidosMaestro" />
                                                <ext:Column ColumnID="telefonoMaestro" Header="Teléfono del Maestro" Width="250" DataIndex="TelefonoMaestro" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Maestro" Icon="TagBlue" TabTip="Recursos Maestros" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras ingresar nuevos maestros." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                    <%-- Pestaña Materias --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Materias" Icon="TagBlue" TabTip="Materias" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Nombre Materia" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nombre Maestro" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nombre Estudiante" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nombre Aula" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>
                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Materias" TrackMouseOver="true">
                                        <Store>
                                            <ext:Store ID="store_materias" runat="server">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="IdMateria" />
                                                            <ext:RecordField Name="CedulaMaestro" />
                                                            <ext:RecordField Name="CedulaEstudiante" />
                                                            <ext:RecordField Name="IdAula" />
                                                            <ext:RecordField Name="NombreMateria" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="idMateria" Header="Id Materia" Width="250" DataIndex="IdMateria" />
                                                <ext:Column ColumnID="cedulaMaestro" Header="Cédula del Maestro" Width="250" DataIndex="CedulaMaestro" />
                                                <ext:Column ColumnID="cedulaEstudiante" Header="Cédula del Estudiante" Width="250" DataIndex="CedulaEstudiante" />
                                                <ext:Column ColumnID="idAula" Header="Id Aula" Width="250" DataIndex="IdAula" />
                                                <ext:Column ColumnID="nombreMateria" Header="Nombre de Materia" Width="250" DataIndex="NombreMateria" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Materias" Icon="TagBlue" TabTip="Recursos Materias" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras ingresar nuevas materias." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                    <%-- Pestaña Notas --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Notas" Icon="TagBlue" TabTip="Notas" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Nombre Estudiante" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Quimestre Nro" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nota 1" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nota 2" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nota 3" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Nota 4" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>
                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Notas" TrackMouseOver="true">
                                        <Store>
                                            <ext:Store ID="store_notas" runat="server">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="IdNota" />
                                                            <ext:RecordField Name="CedulaEstudiante" />
                                                            <ext:RecordField Name="IdQuimestre" />
                                                            <ext:RecordField Name="Nota1" />
                                                            <ext:RecordField Name="Nota2" />
                                                            <ext:RecordField Name="Nota3" />
                                                            <ext:RecordField Name="Nota4" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="idNota" Header="Id Nota" Width="50" DataIndex="IdNota" />
                                                <ext:Column ColumnID="cedulaEstudiante" Header="Cédula del Estudiante" Width="200" DataIndex="CedulaEstudiante" />
                                                <ext:Column ColumnID="idQuimestre" Header="Id Quimestre" Width="250" DataIndex="IdQuimestre" />
                                                <ext:Column ColumnID="nota1" Header="Nota 1" Width="50" DataIndex="Nota1" />
                                                <ext:Column ColumnID="nota2" Header="Nota 2" Width="50" DataIndex="Nota2" />
                                                <ext:Column ColumnID="nota3" Header="Nota 3" Width="50" DataIndex="Nota3" />
                                                <ext:Column ColumnID="nota4" Header="Nota 4" Width="50" DataIndex="Nota4" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Notas" Icon="TagBlue" TabTip="Recursos Notas" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras ingresar nuevas notas." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                    <%-- Pestaña Quimestre --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Quimestre" Icon="TagBlue" TabTip="Quimestre" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Fecha Inicio" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Fecha Fin" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Número Quimestre" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>
                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Quimestre" TrackMouseOver="true">
                                        <Store>
                                            <ext:Store ID="store_quimestre" runat="server">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="IdQuimestre" />
                                                            <ext:RecordField Name="FechaInicio" />
                                                            <ext:RecordField Name="FechaFin" />
                                                            <ext:RecordField Name="NumeroQuimestre" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="idQuimestre" Header="Id Quimestre" Width="50" DataIndex="IdQuimestre" />
                                                <ext:Column ColumnID="fechaInicio" Header="Fecha de Inicio" Width="200" DataIndex="FechaInicio" />
                                                <ext:Column ColumnID="fechaFin" Header="Fecha de Fin" Width="250" DataIndex="FechaFin" />
                                                <ext:Column ColumnID="numeroQuimestre" Header="Numero Quimestre" Width="50" DataIndex="NumeroQuimestre" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Quimestre" Icon="TagBlue" TabTip="Recursos Quimestre" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras ingresar nuevos quimestre." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                    <%-- Pestaña Asistencia --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Asistencia" Icon="TagBlue" TabTip="Asistencia" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Nombre Estudiante" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Fecha Asistencia" AllowBlank="false" AnchorHorizontal="50%" />
                                    <ext:TextField runat="server" FieldLabel="Asistencia" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>
                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Asistencia" TrackMouseOver="true">
                                        <Store>
                                            <ext:Store ID="store_asistencia" runat="server">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="IdAsistencia" />
                                                            <ext:RecordField Name="CedulaEstudiante" />
                                                            <ext:RecordField Name="FechaAsistencia" />
                                                            <ext:RecordField Name="TomarAsistencia" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="idAsistencia" Header="Id Asistencia" Width="50" DataIndex="IdAsistencia" />
                                                <ext:Column ColumnID="cedulaEstudiante" Header="Cedula Estudiante" Width="200" DataIndex="CedulaEstudiante" />
                                                <ext:Column ColumnID="fechaAsistencia" Header="Fecha de Asistencia" Width="250" DataIndex="FechaAsistencia" />
                                                <ext:Column ColumnID="tomarAsistencia" Header="Asistio?" Width="50" DataIndex="TomarAsistencia" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Asistencia" Icon="TagBlue" TabTip="Recursos Asistencia" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras registrar la asistencia de estudiantes." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                    <%-- Pestaña Aula --%>
                    <ext:GroupTab runat="server" MainItem="1">
                        <Items>
                            <ext:Panel runat="server" TrackMouseOver="true" Title="Aula" Icon="TagBlue" TabTip="Aula" Padding="10">
                                <Items>
                                    <ext:TextField runat="server" FieldLabel="Nombre Aula" AllowBlank="false" AnchorHorizontal="50%" />

                                    <ext:Button runat="server" Text="Guardar" />
                                    <ext:Button runat="server" Text="Cancelar" />

                                </Items>
                                <Items>
                                    <ext:GridPanel runat="server" Height="500" StripeRows="true" Title="Lista Aula" TrackMouseOver="true">
                                        <Store>
                                            <ext:Store ID="store_aula" runat="server">
                                                <Reader>
                                                    <ext:JsonReader>
                                                        <Fields>
                                                            <ext:RecordField Name="IdAula" />
                                                            <ext:RecordField Name="NombreAula" />
                                                        </Fields>
                                                    </ext:JsonReader>
                                                </Reader>
                                            </ext:Store>
                                        </Store>
                                        <LoadMask ShowMask="true" />
                                        <ColumnModel runat="server">
                                            <Columns>
                                                <ext:RowNumbererColumn />
                                                <ext:Column ColumnID="idAula" Header="Id Aula" Width="50" DataIndex="IdAula" />
                                                <ext:Column ColumnID="nombreAula" Header="Nombre del Aula" Width="200" DataIndex="NombreAula" />
                                            </Columns>
                                        </ColumnModel>
                                    </ext:GridPanel>
                                </Items>
                            </ext:Panel>
                            <ext:Panel runat="server" Title="Aula" Icon="TagBlue" TabTip="Recursos Aula" Padding="10">
                                <Items>
                                    <ext:Label runat="server" Text="Aquí podras ingresar nuevas aulas." Region="Center"></ext:Label>
                                </Items>
                            </ext:Panel>
                        </Items>
                    </ext:GroupTab>
                </Groups>
            </ext:GroupTabPanel>
        </Items>
    </ext:Viewport>
    
</body>
</html>
