using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamLibrary.App_Code;
using System.Data.SqlClient;

namespace ExamLib
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["UserName"] = this.user.Text;
            if (!IsPostBack)
            {
                Random rnd = new Random();
                this.labelValidate.Text = rnd.Next(1000, 9999).ToString();
            }
            summaryValid.Visible = false;
            LabelValidMeg.Visible = false;
        }

        //重置文本框里面的内容
        protected void resetting_Click(object sender, EventArgs e)
        {
            userBox.Text = "";
            passwordBox.Text = "";
            goDirDropDownList.Text = "学生";

            summaryValid.Visible = false;
            LabelValidMeg.Visible = false;

            //重置时，随机数也要改变
            Random rnd = new Random();
            this.labelValidate.Text = rnd.Next(1000, 9999).ToString();
        }

        //点击登录按钮后的响应
        protected void login_Click(object sender, EventArgs e)
        {
            string user = userBox.Text;
            string pwd = passwordBox.Text;
            string status = goDirDropDownList.SelectedValue;

            if (user != "" && pwd != "")
            {
                //检测验证码
                if (labelValidate.Text != validBox.Text)
                {
                    LabelValidMeg.Visible = true;
                    LabelValidMeg.Text = "验证码不对！";
                    return;
                }

                //验证输入的用户名和密码与响应的身份是否对应
                DataClass data = new DataClass();
                SqlConnection sqlCon = data.getConnection();
                string sqlStr="";
                if(status == "学生")
                    sqlStr = "select * from student where Sname='" + user + "' and  Password='" + pwd + "'";
                else if(status == "老师")
                    sqlStr = "select * from teacher where Teachername='" + user + "' and  TeacherPassword='" + pwd + "'";
                else
                    sqlStr = "select * from admin where adminName='" + user + "' and  adminPassword='" + pwd + "'";

                SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);

                sqlCon.Open();
                SqlDataReader dr = sqlCom.ExecuteReader();
                //如果存在该用户，这读取的数据中有记录
                if (dr.Read())
                {
                    summaryValid.Visible = false;

                    //利用Session记录用户名
                    Session.Clear();
                    Session["user"] = user;

                    if (status == "学生")
                        Response.Redirect("ExamInfo_Student.aspx");
                    else if (status == "老师")
                        Response.Redirect("ExamInfo_Teacher.aspx");
                    else
                        Response.Redirect("Manager.aspx");
                    
                }
                else
                {
                    //如果登录出问题，该label显示所有错误
                    summaryValid.Visible = true;
                }

                dr.Close();
                sqlCon.Close();
            }
        }

        //当用户名的文本框的文本改变就要设置错误提示Label不可见
        protected void userBox_TextChanged(object sender, EventArgs e)
        {
            summaryValid.Visible = false;
        }

        protected void passwordBox_TextChanged(object sender, EventArgs e)
        {
            summaryValid.Visible = false;
        }
    }
}