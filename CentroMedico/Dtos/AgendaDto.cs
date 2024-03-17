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

    }
}
