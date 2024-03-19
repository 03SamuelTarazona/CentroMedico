
namespace CentroMedico.Dtos
{
    public class MedicoDto : PersonaDto
    {
        public string? especialidad { get; set; }

        public MedicoDto() { }

        public MedicoDto(int id_persona, string? nom_completo, string? num_documento, string? genero, string? correo, string? fecha_nacimiento, string? telefono, string? num_seguro, string? contraseña, string? respuesta, string? rol, string especialidad) 
            : base(id_persona, nom_completo, num_documento, genero, correo, fecha_nacimiento, telefono, num_seguro, contraseña, respuesta, rol)
        {
            this.especialidad = especialidad;
        }
    }
}
