using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ExamLibrary.App_Code
{
    public class DataClass
    {
        public SqlConnection getConnection()
        {
            string strCon = @"Data Source=(local);DataBase=examLib;integrated security=true";
            SqlConnection sqlCon = new SqlConnection(strCon);
            return sqlCon;
        }

        public bool excuteCom(string sqlStr)
        {
            SqlConnection sqlCon = getConnection();

            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);
            sqlCon.Open();

            try
            {
                sqlCom.ExecuteNonQuery();
            }
            catch 
            {
                
            }
            finally
            {
                sqlCon.Close();
            }
            return true;
        }

    }
}