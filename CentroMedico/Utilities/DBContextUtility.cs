using System;
using System.Web;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;

namespace CentroMedico.Utilities
{
    public class DBContextUtility
    {
        static string SERVER = "SAMUEL";
        static string DB_NAME = "CentroMedico_BACKUP";
        static string DB_USER = "Samuel";
        static string DB_PASSWORD = "0304";
        static string Connection = "server=" + SERVER + ";database=" + DB_NAME + ";user id=" + DB_USER + ";password=" + DB_PASSWORD + "MultipleActiveResultSets=true";

        SqlConnection ConexionSQL = new SqlConnection(Connection);

        public void Connect()
        {
            try
            {
                ConexionSQL.Open();
            }
            catch (Exception ex) 
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void Disconnect()
        {
            ConexionSQL.Close();
        }

        public SqlConnection Con()
        {
            return ConexionSQL;
        }

    }
}
