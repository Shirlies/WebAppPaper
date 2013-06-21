using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamLibrary
{
    public partial class ExamAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }
            String cno = Request.QueryString["Cno"];
            String chapternum = Request.QueryString["Chapternum"];
            String chaptername = Request.QueryString["Chaptername"];

            LabelTipPaper.Text = "尊敬的" + Convert.ToString(Session["user"]) + "老师，您正在添加试题的是 " + cno + " 课程，所在章节是章节编号为 " + chapternum + " ；章节名为：" + chaptername;
       
        }

        protected void ButtonSavePaper_Click(object sender, EventArgs e)
        {

        }
    }
}