using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ExamLibrary.App_Code;

namespace ExamLib
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random rnd = new Random();
                this.validLable.Text = rnd.Next(1000, 9999).ToString();
            }

            LabelValidMeg.Visible = false;
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            LabelValidMeg.Visible = false;
            Response.Redirect("Default.aspx");
        }

        protected void registerOK_Click(object sender, EventArgs e)
        {
            string name = userRegisterBox.Text;
            string num = studentNumBox.Text;
            string majorNum = subjectBox.Text;
            string academy = collegeBox.Text;
            string pwd = passwordRegisterBox.Text;
            string mail = mailBox.Text;
            string status = statusDropDownList.SelectedValue;

            if(status == "学生" && majorNum == "")
            {
                summary.Text = "学生必需填专业！";
                return ;
            }

            if (validBox.Text != validLable.Text)
            {
                LabelValidMeg.Visible = true;
                LabelValidMeg.Text = "验证码不对！";
                return;
            }

            if (name != "" && num != "" && pwd != "" && pwd == passwordOKBox.Text)
            {
                SqlConnection sqlCon = new DataClass().getConnection();

                sqlCon.Open();
                string sqlStr = "";
                if (status == "学生")
                    sqlStr = "insert into student" + " values ('" + num + "','" + name + "','" + majorNum + "','"
                                + academy + "','" + pwd + "','" + mail + "')";
                else if (status == "老师")
                    sqlStr = "insert into teacher" + " values ('" + name + "','"
                                + pwd + "','" + academy + "','" + mail + "')";

                SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);
                sqlCom.ExecuteNonQuery();

                sqlCon.Close();

                Session.Clear();
                Session["user"] = name;

                if (status == "学生")
                    Response.Redirect("ExamInfo_Student.aspx");
                else
                    Response.Redirect("ExamInfo_Teacher.aspx");

            }

        }
    }
}