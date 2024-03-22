using CentroMedico.Dtos;
using CentroMedico.Utilities;
using Microsoft.Data.SqlClient;
namespace CentroMedico.Repositories
{
    public class UserRepository
    {
        public int CrearPersona(PersonaDto persona, PreguntaSegDto preguntaSeg)
        {
            int comando = 0;
            DBContextUtility Connection = new DBContextUtility();
            Connection.Connect();
            string SQL1 = "INSERT INTO Persona.dbo.[PERSONA] (nom_completo, num_documento, genero, correo, fecha_nacimiento, telefono, num_seguro, contraseña, id_pregunta_seg, respuesta_preg) "
                + "VALUES ("+persona.nom_completo+","+persona.num_documento+","+persona.genero+","+persona.correo+","+persona.fecha_nacimiento+","+persona.telefono+","+persona.num_seguro+","+persona.contraseña+","+preguntaSeg.pregunta+","+persona.respuesta+");";
            using (SqlCommand commandPersona = new SqlCommand(SQL1, Connection.Con()))
            {
                comando = commandPersona.ExecuteNonQuery();
                int idPersona = Convert.ToInt32(commandPersona.ExecuteScalar());
                persona.id_persona = idPersona;
                string SQL2 = "INSERT INTO Rol.dbo[ROL] (id_persona, rol_persona)" 
                    + "VALUES ("+persona.id_persona+","+persona.rol+");";
                using (SqlCommand commandRol = new SqlCommand(SQL2, Connection.Con()))
                {
                    comando = commandRol.ExecuteNonQuery();
                }
            }
            Connection.Disconnect();
            return comando;
        }   

        private int InsertarRol(PersonaDto persona)
        {

            int comando = 0;
            string SQL2 = "INSERT INTO Rol.dbo[ROL] (id_persona, rol_persona)"
                    + "VALUES (" + persona.id_persona + "," + persona.rol + ");";
            DBContextUtility connection = new DBContextUtility();
            connection.Connect();
            using (SqlCommand commandRol = new SqlCommand(SQL2, connection.Con()))
            {
                comando = commandRol.ExecuteNonQuery();
            }
            connection.Disconnect();
            return comando;
        }

    }


}
