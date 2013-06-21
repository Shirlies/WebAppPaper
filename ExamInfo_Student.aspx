<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamInfo_Student.aspx.cs" Inherits="ExamLibrary.TestInfo_Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生试题</title>
    <style type="text/css">
        .style1
        {
            height: 140px;
        }
    </style>
</head>
<body style="height: 239px">
    <form id="form1" runat="server">
    <div>
         <div style="position:relative; top: -14px; left: -10px; height: 256px; width: 1369px;">
         <div style="position:absolute;left:236px; top:78px; color:#000; width: 1101px;">
         <p ><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 暨</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">南 大 学</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">试</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">题</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;"> 库</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;"></span></p><p style="text-align:center;"><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             学生试题信息</span></p>
         </div>
         <img src="img/head.png" width="auto"/>
         </div>
    </div>
    <table style="width:100%;">
        <tr>
            <td colspan="3" style="font-family:Arial;font-size:16px;font-weight:normal;font-style:normal;text-decoration:none;color:#00FF00">
               同学，欢迎你进入暨南大学试题库
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentInfo.aspx">个人信息</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">退出</asp:HyperLink>
            </td>
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
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSourceCourse" DataTextField="Cname" 
                    DataValueField="Cname" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                    SelectCommand="SELECT course.Cname, course.Cno FROM course INNER JOIN student ON course.Majorname = student.Majorname and student.Sname = @user ">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="李华" Name="user" SessionField="user" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
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
            <td colspan="7">
                <hr />
            </td>
        </tr>
        <tr>
            <td>
            <label>课程介绍</label>
                <asp:Label ID="LabelDetail" runat="server" Text="课程介绍"></asp:Label>
            </td>
            <td colspan="4">
                <asp:GridView ID="GridViewChapter" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="Cno,Chapternum" DataSourceID="SqlDataSourceChapter" 
                    ForeColor="#333333" GridLines="None" 
                     PageSize="4" 
                    Width="622px" 
                    onselectedindexchanged="GridViewChapter_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="课程编号" SortExpression="Cno">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Cno") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cno") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Chapternum" HeaderText="章节号" ReadOnly="True" 
                            SortExpression="Chapternum" />
                        <asp:BoundField DataField="Chaptername" HeaderText="章节题目" 
                            SortExpression="Chaptername" />
                        <asp:BoundField DataField="Paper" HeaderText="试卷" SortExpression="Paper" />
                        <asp:CommandField HeaderText="操作" ShowSelectButton="True" />
                        <asp:HyperLinkField DataNavigateUrlFields="Paper,Cno,Chapternum,Chaptername" 
                            DataNavigateUrlFormatString="ExamStudent.aspx?Paper={0}&amp;Cno={1}&amp;Chapternum={2}&amp;Chaptername={3}" 
                            HeaderText="填写试卷" NavigateUrl="~/ExamStudent.aspx" Text="填写试卷" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        <asp:Button ID="ButtonPaper" runat="server" onclick="ButtonPaper_Click" 
                            Text="填写试题" />
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceChapter" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                    SelectCommand="SELECT chapter.Cno, chapter.Chapternum, chapter.Chaptername, chapter.Chapterintroduce, chapter.Paper FROM chapter INNER JOIN course ON chapter.Cno = course.Cno AND course.Cname = @course">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="course" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td colspan="2">
                <asp:DetailsView ID="DetailsViewChapter" runat="server" 
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="Cno,Chapternum" 
                    DataSourceID="SqlDataSourceDetailChapter" ForeColor="#333333" GridLines="None" 
                    Height="50px" Width="273px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Cno" HeaderText="课程编号" ReadOnly="True" 
                            SortExpression="Cno" />
                        <asp:BoundField DataField="Chapternum" HeaderText="章节号" ReadOnly="True" 
                            SortExpression="Chapternum" />
                        <asp:BoundField DataField="Chaptername" HeaderText="章节题目" 
                            SortExpression="Chaptername" />
                        <asp:BoundField DataField="Chapterintroduce" HeaderText="章节介绍" 
                            SortExpression="Chapterintroduce" />
                        <asp:BoundField DataField="Paper" HeaderText="试卷" SortExpression="Paper" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSourceDetailChapter" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                    SelectCommand="SELECT * FROM [chapter] WHERE ([Cno] = @Cno)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewChapter" Name="Cno" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
            <td class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
