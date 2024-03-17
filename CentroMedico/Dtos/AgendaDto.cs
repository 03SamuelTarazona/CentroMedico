namespace CentroMedico.Dtos
{
    internal class AgendaDto
    {
        private int id_agenda { get; set; }
        private int id_paciente { get; set; }
        private int id_medico { get; set; }
        private string fecha { get; set; }
        private string motivo { get; set; }
        private string detalle_paciente { get; set; }

        public AgendaDto() { }

        public AgendaDto(int id_agenda, int id_paciente, int id_medico, string fecha, string motivo, string detalle_paciente)
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
