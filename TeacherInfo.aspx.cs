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
    public partial class TeacherInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }
            showPanelInfo();
            PanelInfo.Visible = true;
            PanelCourseInfo.Visible = false;
            PanelPaperInfo.Visible = false;
        }

        private void showPanelInfo()
        {
            DataClass dc = new DataClass();
            SqlConnection sqlCon = dc.getConnection();
            
            String sqlStr = "select * from teacher where Teachername = '" + Convert.ToString(Session["user"]) + "'";
            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);

            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();

            if (dr.Read())
            {
                TextBoxTeacherName.Text = dr["Teachername"].ToString();
                TextBoxTeacherPwd.Text = dr["TeacherPassword"].ToString() ;
                TextBoxAcademy.Text = dr["Academy"].ToString();
                TextBox5.Text = dr["Mailbox"].ToString();
            }

            dr.Close();
            sqlCon.Close();
        }

        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {
            PanelInfo.Visible = true;
            PanelCourseInfo.Visible = false;
            PanelPaperInfo.Visible = false;
            showPanelInfo();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Menu1.Items[0].ChildItems[0].Selected)
            {
                PanelInfo.Visible = false;
                PanelPaperInfo.Visible = false;
                PanelCourseInfo.Visible = true;
            }
            else if(Menu1.Items[0].ChildItems[1].Selected)
            {
                PanelCourseInfo.Visible = false;
                PanelPaperInfo.Visible = true;
                PanelInfo.Visible = false;
            }
        }

        protected void ButtonSaveInfo_Click(object sender, EventArgs e)
        {
            DataClass dc = new DataClass();
            String sqlStr = "update teacher set TeahcerPassword = '" + TextBoxTeacherPwd.Text + ",Academy = '" + TextBoxAcademy.Text + ",MailBox = '" + TextBox5.Text + "' where Teachername = '" + Convert.ToString(Session["user"]) + "'";

            dc.excuteCom(sqlStr);
        }
    }
}