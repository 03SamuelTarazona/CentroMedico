namespace CentroMedico.Dtos
{
    public class PreguntaSegDto
    {
        public int? id_pregunta { get; set; }
        public string? pregunta { get; set; }
        public int Response { get; set; }
        public string Message { get; set; } = string.Empty;

        public PreguntaSegDto() { }

        public PreguntaSegDto(int? id_pregunta, string? pregunta)
        {
            this.id_pregunta = id_pregunta;
            this.pregunta = pregunta;
        }
    }
}
