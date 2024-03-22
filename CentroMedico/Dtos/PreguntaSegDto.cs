namespace CentroMedico.Dtos
{
    public class PreguntaSegDto
    {
        public int? id_pregunta { get; set; }
        public string? pregunta { get; set; }
        public int Response { get; set; }
        public string Message { get; set; } = string.Empty;
    }
}
