using System;
using System.Collections.Generic;
using System.Data.SqlClient;
namespace CentroMedico.Utilities
{
    public class DBContextUtility
    {
        private static string SERVER = "DESKTOP-KGQPBEG\\MSSQLSERVER2";
        private static string DB_NAME = "CentroMedico_BACKUP";
        private static string DB_USER = "Samuel";
        private static string DB_PASSWORD = "0304";
        private static string Connection = "server=" + SERVER + ";database=" + DB_NAME + ";user id=" + DB_USER + ";password=" + DB_PASSWORD + "MultipleActiveResultSets=true";

        //SqlConnection Con = new SqlConnection(Connection);

        public void Connect()
        {

        }
    }
}
