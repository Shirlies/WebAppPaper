using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamLibrary
{
    public partial class ExamStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }

            string paper = Convert.ToString(Request.Params["Paper"]);
            if (paper == "")
            {
                Response.Write("<script>alert('该科目的教师没有添加试卷，你无法填写试题.')</script>");
                Response.Redirect("ExamInfo_Student.aspx");
                return;
            }
            
            String Cno = Request.Params["Cno"];
            String Chapternum = Request.Params["Chapternum"];
            String Chaptername = Request.Params["Chaptername"];
            Label1.Text = Convert.ToString(Session["user"]) + " 同学，你好，欢迎你填写试题。你的试题是：课程" + Cno + "的章节" + Chapternum + "，该章节名为" + Chaptername;
        }
    }
}