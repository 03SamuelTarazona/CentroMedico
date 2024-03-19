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

        public AgendaDto() { }

        public AgendaDto(int? id_agenda, int? id_paciente, int? id_medico, string? fecha, string? motivo, string? detalle_paciente)
        {
            this.id_agenda = id_agenda;
            this.id_paciente = id_paciente;
            this.id_medico = id_medico;
            this.fecha = fecha;
            this.motivo = motivo;
            this.detalle_paciente = detalle_paciente;
        }
    }
}
