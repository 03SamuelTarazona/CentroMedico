namespace CentroMedico.Dtos
{
    public class PreguntaSegDto
    {
        private int? id_pregunta { get; set; }
        private string? pregunta { get; set; }

        public PreguntaSegDto() { }

        public PreguntaSegDto(int id_pregunta, string pregunta)
        {
            this.id_pregunta = id_pregunta;
            this.pregunta = pregunta;
        }
    }
}
