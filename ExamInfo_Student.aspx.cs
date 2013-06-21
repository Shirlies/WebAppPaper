using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamLibrary.App_Code;
using System.Data.SqlClient;

namespace ExamLibrary
{
    public partial class TestInfo_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }
            courseInfoMethod();
        }

        protected void ButtonPaper_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonPaper_Click1(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }

            DataClass dc = new DataClass();
            SqlConnection sqlCon = dc.getConnection();
            String sqlStr = "select * from chapter where Cno = '" + GridViewChapter.SelectedRow.Cells[0].Text + "' and Chapternum = '" + GridViewChapter.SelectedRow.Cells[1].Text + "'";
            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);

            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();

            if (dr.Read() && dr["Paper"] != null)
            {
                dr.Close();
                sqlCon.Close();

                Response.Redirect("ExamStudent.aspx");
            }
            else
            {
                dr.Close();
                sqlCon.Close();
                Response.Write("<script>alert('该科目的教师没有添加试卷，你无法填写试题.')</script>");
            }
            
        }

        private void courseInfoMethod()
        {
            DataClass data = new DataClass();
            SqlConnection sqlCon = data.getConnection();
            string sqlStr = "select Cintroduce from course where Cname = '" + DropDownList1.SelectedValue + "'";

            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);
            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();
            if (dr.Read())
            {
                LabelDetail.Text = dr["Cintroduce"].ToString();
            }

            dr.Close();
            sqlCon.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            courseInfoMethod();
        }

        protected void GridViewChapter_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}