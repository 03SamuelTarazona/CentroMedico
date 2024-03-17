namespace CentroMedico.Dtos
{
    public class PersonaDto
    {
        //Atributos de la persona
        private int id_persona { get; set; }
        private string? nom_completo { get; set; }
        private string? num_documento { get; set; }
        private string? genero { get; set; }
        private string? correo { get; set; }
        private string? fecha_nacimiento { get; set; }
        private string? telefono { get; set; }
        private string? num_seguro { get; set; }
        private string? contraseña { get; set; }
        private string? respuesta { get; set; }
        private string? rol { get; set; }

        //Constructor vacío
        public PersonaDto() { }

        //Creación del objeto persona a partir del constructor
        public PersonaDto(int id, string nombre, string documento, string genero, string correo, string fecha, string telefono, string numero_seguro, string contraseña, string respuesta, string rol)
        {
            this.id_persona = id;
            this.nom_completo = nombre;
            this.num_documento = documento;
            this.genero = genero;
            this.correo = correo;
            this.fecha_nacimiento = fecha;
            this.telefono = telefono;
            this.num_seguro = numero_seguro;
            this.contraseña = contraseña;
            this.respuesta = respuesta;
            this.rol = rol;
        }

    }
}
