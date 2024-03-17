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

    }
}
