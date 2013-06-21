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
    public partial class StudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }

            PanelInfo.Visible = true;
            PanelPaper.Visible = false;
            showPanelInfo();
        }

        private void showPanelInfo()
        {
            DataClass dc = new DataClass();
            SqlConnection sqlCon = dc.getConnection();

            String sqlStr = "select * from student where Sname = '" + Convert.ToString(Session["user"]) + "'";
            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);

            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();

            if (dr.Read())
            {
                TextBoxSno.Text = dr["Sno"].ToString();
                TextBoxSname.Text = dr["Sname"].ToString();
                TextBoxMajorname.Text = dr["Majorname"].ToString();
                TextBoxAcademy.Text = dr["Academy"].ToString();
                TextBoxPassword.Text = dr["Password"].ToString();
                TextBoxMailbox.Text = dr["Mailbox"].ToString();
            }

            dr.Close();
            sqlCon.Close();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Menu1.Items[0].Selected)
            {
                PanelInfo.Visible = true;
                PanelPaper.Visible = false;
                showPanelInfo();
            }
            else if (Menu1.Items[1].Selected)
            {
                PanelInfo.Visible = false;
                PanelPaper.Visible = true;
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            DataClass dc = new DataClass();
            String sqlStr = "update teacher set Sname = '" + TextBoxSname.Text + "',Academy = '" + TextBoxAcademy.Text + "',MailBox = '" + TextBoxMailbox.Text + "',password = '" + TextBoxPassword.Text + "' where Sno = '" + TextBoxSno.Text + "'";

            dc.excuteCom(sqlStr);

            Response.Redirect("Default.aspx");
        }
    }
}