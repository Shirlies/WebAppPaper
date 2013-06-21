using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamLibrary
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return ;
            }

            PanelCourse.Visible = false;
                PanelPaper.Visible = false;
                PanelStudent.Visible = false;
                PanelTeacher.Visible = true;
        }

        protected void quit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Menu1.Items[0].Selected)
            {
                PanelCourse.Visible = false;
                PanelPaper.Visible = false;
                PanelStudent.Visible = false;
                PanelTeacher.Visible = true;
            }
            else if (Menu1.Items[1].Selected)
            {
                PanelCourse.Visible = false;
                PanelPaper.Visible = false;
                PanelStudent.Visible = true;
                PanelTeacher.Visible = false;
            }
            else if (Menu1.Items[2].ChildItems[0].Selected)
            {
                PanelCourse.Visible = true;
                PanelPaper.Visible = false;
                PanelStudent.Visible = false;
                PanelTeacher.Visible = false;
            }
            else if (Menu1.Items[2].ChildItems[1].Selected)
            {
                PanelCourse.Visible = false;
                PanelPaper.Visible = true;
                PanelStudent.Visible = false;
                PanelTeacher.Visible = false;
            }
        }
    }
}