<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamInfo_Teacher.aspx.cs" Inherits="ExamLibrary.ExamInfo_Teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>教师试题</title>
    <link href="welcome.css" type="text/css" rel="Stylesheet"/>
    <style type="text/css">
        .style3
        {
        }
        .style5
        {
        }
        .style7
        {
        }
        .style9
        {
            height: 20px;
        }
        .style11
        {
            width: 140px;
        }
        .style13
        {
            width: 200px;
        }
        .style14
        {
            width: 200px;
        }
        .style15
        {
            width: 600px;
        }
        .style17
        {
            width: 233px;
        }
        .style18
        {
            width: 200px;
        }
        .style19
        {
            width: 402px;
        }
        .style20
        {
            height: 70px;
        }
    </style>
</head>
<body style="height: 244px">
    <form id="form1" runat="server">
    <div>
         <div style="position:relative; top: -14px; left: -10px; height: 256px; width: 1369px;">
         <div style="position:absolute;left:236px; top:70px;left:190px; color:#000; width: 1101px;">
         <p ><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 暨</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">南 大 学</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">试</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">题</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;"> 库</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;"></span></p><p style="text-align:center;"><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             老师试题信息</span></p>
         </div>
         <img src="img/head.png" width="auto"/>
         </div>

    </div>
    
    <table style="width: 100%; height: 703px;">
        <tr>
            <td colspan="3" style="font-family:Arial;font-size:16px;font-weight:normal;font-style:normal;text-decoration:none;color:#00FF00">
                &nbsp;老师，欢迎进入暨南大学试题库</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13" >
                <asp:HyperLink ID="HyperLinkTeacherInfo" runat="server" ForeColor="#0000CC" 
                    NavigateUrl="~/TeacherInfo.aspx">个人信息</asp:HyperLink>
            </td>
            <td class="style14">
                <asp:HyperLink ID="HyperLinkQuit" runat="server" ForeColor="#0000CC" 
                    NavigateUrl="~/Default.aspx">退出</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style17">
                <asp:DropDownList ID="DropDownListCourse" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSourceCourse" DataTextField="Cname" 
                    DataValueField="Cname" 
                    onselectedindexchanged="DropDownListCourse_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                    SelectCommand="SELECT Cno, Cname, Majorname, Cintroduce, Cteacher FROM course WHERE (Cteacher = @user )">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="胡君" Name="user" SessionField="user" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="ButtonAddCourse" runat="server" Text="添加课程" 
                    onclick="ButtonAddCourse_Click" />
            </td>
            <td class="style14">
                <asp:Button ID="ButtonDeleteCourse" runat="server" Text="删除课程" 
                    onclick="ButtonDeleteCourse_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="7">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style15" rowspan="2">
                <label style="font-size:large;color:#0000CC">课程简介</label>
                <p />
                <asp:Label ID="LabelCourseDetail" runat="server" Text="课程简介"></asp:Label>
            </td>
            <td class="style20" colspan="4">
                <asp:GridView ID="GridViewCourse" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AllowPaging="True" AllowSorting="True" 
                    AutoGenerateColumns="False" 
                     Width="577px" 
                    PageSize="4" DataKeyNames="Cno,Chapternum" DataSourceID="SqlDataSourceChapter">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Cno" HeaderText="课程号" ReadOnly="True" 
                            SortExpression="Cno" />
                        <asp:BoundField DataField="Chapternum" HeaderText="章节号" ReadOnly="True" 
                            SortExpression="Chapternum" />
                        <asp:BoundField DataField="Chaptername" HeaderText="章节名" 
                            SortExpression="Chaptername" />
                        <asp:BoundField DataField="Chapterintroduce" HeaderText="章节介绍" 
                            SortExpression="Chapterintroduce" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:HyperLinkField DataNavigateUrlFields="Cno,Chapternum,Chaptername,Paper" 
                            DataNavigateUrlFormatString="ExamEditor.aspx?Cno={0}&amp;Chapternum={1}&amp;Chaptername={2}&amp;Paper={3}" 
                            HeaderText="编辑试题" Text="编辑试题" />
                        <asp:HyperLinkField DataNavigateUrlFields="Cno,Chapternum,Chaptername,Paper" 
                            DataNavigateUrlFormatString="ExamLook.aspx?Cno={0}&amp;Chapternum={1}&amp;Chaptername={2}&amp;Paper={3}" 
                            HeaderText="查看试题" Text="查看试题" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceChapter" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                    
                    SelectCommand="SELECT chapter.Cno, chapter.Chapternum, chapter.Chaptername, chapter.Chapterintroduce, chapter.Paper FROM chapter INNER JOIN course ON chapter.Cno = course.Cno AND course.Cname = @course">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListCourse" Name="course" 
                            PropertyName="SelectedValue" DefaultValue="编译原理" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="ButtonAddChapter" runat="server" Text="添加章节" 
                    onclick="ButtonAddChapter_Click" />
                <br />
                </td>
            <td class="style7" colspan="2" rowspan="3">
                <asp:Panel ID="Panel1" runat="server" Height="359px" Visible="False" 
                    BackColor="#CCFFFF">
                    <table style="width:100%; margin-top: 0px;">
                        <tr>
                            <td style="text-align:right">
                                <label>课程ID号</label></td>
                            <td>
                                <asp:TextBox ID="TextBoxCno" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:right">
                                <label>课程名</label></td>
                            <td>
                                <asp:TextBox ID="TextBoxCName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:right">
                                <label>所属专业</label></td>
                            <td>
                                <asp:TextBox ID="TextBoxCMajor" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="text-align:right">
                            <label>课程介绍</label>
                            </td>
                            <td class="style9">
                                <asp:TextBox ID="TextBoxCIntroduce" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="text-align:right">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="text-align:right">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:Button ID="ButtonSave" runat="server" Text="保存" Width="54px" 
                                    onclick="ButtonSave_Click" />
                                &nbsp;&nbsp;
                                <asp:Button ID="ButtonCancel" runat="server" Text="取消" Width="58px" 
                                    onclick="ButtonCancel_Click" />
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                
                <asp:Panel ID="Panel2" runat="server" Height="111px" Width="574px" 
                    Visible="False" BackColor="#CCFFFF">
                <table style="width:100%;">
                    <tr>
                        <td style="text-align:right">
                            <label>章节号</label></td>
                        <td>
                            <asp:TextBox ID="TextBoxChapterNum" runat="server"></asp:TextBox>
                        </td>
                        <td style="text-align:right">
                            <label>章节名</label></td>
                        <td>
                            <asp:TextBox ID="TextBoxChapterName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <label>章节简介</label></td>
                        <td>
                            <asp:TextBox ID="TextBoxChapterIntroduce" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="ButtonSaveChapter" runat="server" Text="添加" 
                                onclick="ButtonSaveChapter_Click" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonCancelChapter" runat="server" Text="取消" 
                                onclick="ButtonCancelChapter_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                </asp:Panel>
                
                </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style3" colspan="3" rowspan="6">
                
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
    </table>
    
    </form>
    </body>
</html>
