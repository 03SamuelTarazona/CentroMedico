namespace CentroMedico.Dtos
{
    public class PersonaDto
    {
        public int id_persona { get; set; }
        public string? nom_completo { get; set; }
        public string? num_documento { get; set; }
        public string? genero { get; set; }
        public string? correo { get; set; }
        public string? fecha_nacimiento { get; set; }
        public string? telefono { get; set; }
        public string? num_seguro { get; set; }
        public string? contraseña { get; set; }
        public string? respuesta { get; set; }
        public string? rol { get; set; }
        public int Response { get; set; }
        public string Message { get; set; } = string.Empty;

        public PersonaDto() { }

        public PersonaDto(int id_persona, string? nom_completo, string? num_documento, string? genero, string? correo, string? fecha_nacimiento, string? telefono, string? num_seguro, string? contraseña, string? respuesta, string? rol)
        {
            this.id_persona = id_persona;
            this.nom_completo = nom_completo;
            this.num_documento = num_documento;
            this.genero = genero;
            this.correo = correo;
            this.fecha_nacimiento = fecha_nacimiento;
            this.telefono = telefono;
            this.num_seguro = num_seguro;
            this.contraseña = contraseña;
            this.respuesta = respuesta;
            this.rol = rol;
        }
    }
}
