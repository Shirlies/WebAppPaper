using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamLibrary
{
    public partial class ExamLook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }
            String Paper = Request.QueryString["Paper"];
            String cno = Request.QueryString["Cno"];
            String chapternum = Request.QueryString["Chapternum"];
            String chaptername = Request.QueryString["Chaptername"];

            if (Paper == null)
            {
                Response.Write("<script>alert('您还没为该章添加试题，我要跳到添加试题页面!')</script>");
                Response.Redirect("ExamAdd.aspx?Cno=" + cno + "&Chapternum=" + chapternum + "&Chaptername=" + chaptername);
            }  

            LabelTipPaper.Text = "尊敬的" + Convert.ToString(Session["user"]) + "老师，您正在查看的是 " + cno + " 课程，所在章节是章节编号为 " + chapternum + " ；章节名为：" + chaptername;
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }

            Response.Redirect("ExamEditor.aspx");
        }
    }
}