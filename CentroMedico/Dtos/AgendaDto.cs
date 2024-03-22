namespace CentroMedico.Dtos
{
    internal class AgendaDto
    {
        public int? id_agenda { get; set; }
        public int? id_paciente { get; set; }
        public int? id_medico { get; set; }
        public string? fecha { get; set; }
        public string? motivo { get; set; }
        public string? detalle_paciente { get; set; }
        public int Response {  get; set; }
        public string Message { get; set; } = string.Empty;
    }
}
