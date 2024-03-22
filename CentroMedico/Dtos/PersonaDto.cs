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
        public int? rol { get; set; }
        public int Response { get; set; }
        public string Message { get; set; } = string.Empty;
    }
}
