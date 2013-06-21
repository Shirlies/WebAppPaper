using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamLibrary.App_Code;
using System.Data.SqlClient;
using System.Data;

namespace ExamLibrary
{
    public partial class ExamInfo_Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //检测用户是否仍然处于登录状态，否则跳转到登录页面
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Default.aspx");
                return;
            }
            courseInfoMethod();
            
        }

        //用来设置labelCourseDetail控件显示下拉列表当前选项的课程的详细介绍
        private void courseInfoMethod()
        {
            DataClass data = new DataClass();
            SqlConnection sqlCon = data.getConnection();
            string sqlStr = "select Cintroduce from course where Cname = '" + DropDownListCourse.SelectedValue + "'";

            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);
            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();
            if (dr.Read())
            {
                LabelCourseDetail.Text = dr["Cintroduce"].ToString();
            }

            dr.Close();
            sqlCon.Close();
        }

        //当下拉列表选择改变，就更新一次课程的详细介绍
        protected void DropDownListCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            courseInfoMethod();
        }

        protected void DropDownListCourse_DataBound(object sender, EventArgs e)
        {
            courseInfoMethod();

        }

        //当点击“添加章节”按钮时，显示Panel2，Panel上有添加章节的控件
        protected void ButtonAddChapter_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        //当点击“添加课程”按钮时，显示Panel1，Pane1上有添加课程的控件
        protected void ButtonAddCourse_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        //当点击添加课程的panel的保存按钮时，则将课程信息保存在数据库里面
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            DataClass dc = new DataClass();

            String sqlStr = "insert into course(Cno,Cname,Majorname,Cintroduce,Cteacher) values ('" + TextBoxCno.Text + "','" + TextBoxCName.Text + "','" + TextBoxCMajor.Text + "','" + TextBoxCIntroduce + "','" + Convert.ToString(Session["user"]) + "')";
            dc.excuteCom(sqlStr);

            //保存数据成功后，将Panel1隐藏
            Response.Write("<script>alert('保存新的课程成功.')</script>");
            Panel1.Visible = false;
        }

        //当点击添加课程的panel的取消按钮时，这隐藏Panel1
        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        //当点击添加章节的panel的保存按钮时
        protected void ButtonSaveChapter_Click(object sender, EventArgs e)
        {
            DataClass dc = new DataClass();
            SqlConnection sqlCon = dc.getConnection();
            
            //找到下拉框对应课程的课程号
            string sqlStr0 = "select Cno from course where Cname = '" + DropDownListCourse.SelectedValue + "'";
            
            SqlCommand sqlCom = new SqlCommand(sqlStr0, sqlCon);
            sqlCon.Open();
            SqlDataReader dr = sqlCom.ExecuteReader();

            String sqlStr = "insert into chapter(Cno,Chapternum,Chaptername,Chapterintroduce) values ('" +dr["Cno"].ToString() +"','" + TextBoxChapterNum.Text + "','" + TextBoxChapterName.Text + "','" + TextBoxChapterIntroduce.Text + "')";

            dc.excuteCom(sqlStr);
            dr.Close();
            sqlCon.Close();

            Panel2.Visible = false;
        }

        //当点击添加章节的panel的取消按钮时，就将Panel2隐藏
        protected void ButtonCancelChapter_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        //当点击“删除课程”按钮时，提示是否删除该课程，并级联删除该课程
        protected void ButtonDeleteCourse_Click(object sender, EventArgs e)
        {
            String course = DropDownListCourse.SelectedValue;
            ButtonDeleteCourse.Attributes.Add("onclick", "return confirm('确定要删除吗?')");

            DataClass dc = new DataClass();
            String sqlStr = "delete from course cascade where Cname = '" + course + "'";
            dc.excuteCom(sqlStr);

            Response.Write("<script>alert('删除成功!')</script>"); 
        }

        //当点击Gridview框里面的编辑试卷的按钮时
        protected void ButtonEditPaper_Click(object sender, EventArgs e)
        {
            //检测用户是否仍然在线，否则跳到登陆页面
            if (Convert.ToString(Session["user"]) == "")
            {
                 Response.Redirect("Default.aspx");
                 return;
            }

            DataClass dc = new DataClass();
            SqlConnection sqlCon = dc.getConnection();

            String sqlStr = "select * from chapter where Cno = '" + GridViewCourse.SelectedRow.Cells[0].Text + "' and Chapternum = '" + GridViewCourse.SelectedRow.Cells[1].Text + "'";
            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);
            
            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();

            if (dr.Read() && dr["Paper"] != null)
            {
                dr.Close();
                sqlCon.Close();
                //跳转过去，并传递课程的名字和章节号和章节名到另外一页
                Response.Redirect("ExamEditor.aspx?cname=" + DropDownListCourse.SelectedValue + "&chapternum=" + GridViewCourse.SelectedRow.Cells[1].Text + "&chaptername=" + GridViewCourse.SelectedRow.Cells[2].Text);
            }
            else
            {
                dr.Close();
                sqlCon.Close();
                Response.Write("<script>alert('您还没有添加试题，我将跳到添加试题页面！')</script>");
                Response.Redirect("ExamAdd.aspx?cname=" + DropDownListCourse.SelectedValue + "&chapternum=" + GridViewCourse.SelectedRow.Cells[1].Text + "&chaptername=" + GridViewCourse.SelectedRow.Cells[2].Text);
            }
        }

        protected void ButtonLookPaper_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                 Response.Redirect("Default.aspx");
                 return;
            }

            DataClass dc = new DataClass();
            SqlConnection sqlCon = dc.getConnection();

            String sqlStr = "select * from chapter where Cno = '" + GridViewCourse.SelectedRow.Cells[0].Text + "' and Chapternum = '" + GridViewCourse.SelectedRow.Cells[1].Text + "'";
            SqlCommand sqlCom = new SqlCommand(sqlStr, sqlCon);

            sqlCon.Open();

            SqlDataReader dr = sqlCom.ExecuteReader();

            if (dr.Read() && dr["Paper"] != null)
            {
                dr.Close();
                sqlCon.Close();
                Response.Redirect("ExamLook.aspx?cname=" + DropDownListCourse.SelectedValue + "&chapternum=" + GridViewCourse.SelectedRow.Cells[1].Text + "&chaptername=" + GridViewCourse.SelectedRow.Cells[2].Text);
            }
            else
            {
                dr.Close();
                sqlCon.Close();
                Response.Write("<script>alert('您还没为该章添加试题，我要跳到添加试题页面!')</script>");
                Response.Redirect("ExamAdd.aspx?cname=" + DropDownListCourse.SelectedValue + "&chapternum=" + GridViewCourse.SelectedRow.Cells[1].Text + "&chaptername=" + GridViewCourse.SelectedRow.Cells[2].Text);
            }

            
        }

    }
}