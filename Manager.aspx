<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="ExamLibrary.Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员界面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 240px">
        <div style="position:relative; top: -14px; left: -10px; height: 256px; width: 1369px;">
       <div style="position:absolute;left:236px; top:78px; color:#000; width: 1101px;">
         <p ><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 暨</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">南 大 学</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">试</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">题</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;"> 库</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;"></span></p><p style="text-align:center;"><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           管理员界面</span></p>
       </div>
       <img src="img/head.png" width="auto"/>
       </div>
     </div>
           <p style="text-align:left; width: 1355px;"><span style="font-family:Arial;font-size:16px;font-weight:normal;font-style:normal;text-decoration:none;color:#00FF00;">
               管理员，欢迎进入暨南大学试题库</span> 
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               <asp:HyperLink ID="quit" runat="server" ForeColor="#3333FF" 
                   NavigateUrl="Default.aspx">退出</asp:HyperLink>
    </p>
    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                    onmenuitemclick="Menu1_MenuItemClick">
                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#F7F6F3" />
                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                    <Items>
                        <asp:MenuItem Text="教师信息" Value="教师信息"></asp:MenuItem>
                        <asp:MenuItem Text="学生信息" Value="学生信息"></asp:MenuItem>
                        <asp:MenuItem Text="试题信息" Value="试题信息">
                            <asp:MenuItem Text="课程信息" Value="课程信息"></asp:MenuItem>
                            <asp:MenuItem Text="试卷信息" Value="试卷信息"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#5D7B9D" />
                </asp:Menu>
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
                &nbsp;</td>
            <td colspan="4" rowspan="8">
                <asp:Panel ID="PanelTeacher" runat="server" Height="94px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="Teachername" DataSourceID="SqlDataSourceTeacher" 
                        ForeColor="#333333" GridLines="None" Height="131px" PageSize="4" Width="849px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Teachername" HeaderText="教师名字" ReadOnly="True" 
                                SortExpression="Teachername" />
                            <asp:BoundField DataField="TeacherPassword" HeaderText="教师密码" 
                                SortExpression="TeacherPassword" />
                            <asp:BoundField DataField="Academy" HeaderText="教师所在学院" 
                                SortExpression="Academy" />
                            <asp:BoundField DataField="Mailbox" HeaderText="教师邮箱" 
                                SortExpression="Mailbox" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
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
                    <asp:SqlDataSource ID="SqlDataSourceTeacher" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                        SelectCommand="SELECT * FROM [teacher]"></asp:SqlDataSource>
                </asp:Panel>
                <asp:Panel ID="PanelStudent" runat="server" Height="89px">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="Sno" DataSourceID="SqlDataSourceStudent" ForeColor="#333333" 
                        GridLines="None" PageSize="4" Width="843px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sno" HeaderText="学生学号" ReadOnly="True" 
                                SortExpression="Sno" />
                            <asp:BoundField DataField="Sname" HeaderText="学生名字" SortExpression="Sname" />
                            <asp:BoundField DataField="Majorname" HeaderText="学生所在专业" 
                                SortExpression="Majorname" />
                            <asp:BoundField DataField="Academy" HeaderText="学生所在学院" 
                                SortExpression="Academy" />
                            <asp:BoundField DataField="Password" HeaderText="学生密码" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="Mailbox" HeaderText="邮箱" SortExpression="Mailbox" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSourceStudent" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                        SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
                    </asp:Panel>
                    <asp:Panel ID="PanelCourse" runat="server" Height="88px">
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                            DataKeyNames="Cno" DataSourceID="SqlDataSourceCourse" ForeColor="#333333" 
                            GridLines="None" PageSize="4" Width="844px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Cno" HeaderText="课程编号" ReadOnly="True" 
                                    SortExpression="Cno" />
                                <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname" />
                                <asp:BoundField DataField="Majorname" HeaderText="课程的专业" 
                                    SortExpression="Majorname" />
                                <asp:BoundField DataField="Cintroduce" HeaderText="课程介绍" 
                                    SortExpression="Cintroduce" />
                                <asp:BoundField DataField="Cteacher" HeaderText="授课教师" 
                                    SortExpression="Cteacher" />
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                            SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
                        </asp:Panel>
                        <asp:Panel ID="PanelPaper" runat="server" Height="102px">
                            <asp:GridView ID="GridView4" runat="server" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="Cno,Chapternum" DataSourceID="SqlDataSourcePaper" 
    ForeColor="Black" GridLines="Vertical" AllowPaging="True" AllowSorting="True" PageSize="4" 
                                Width="844px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Cno" HeaderText="课程编号" ReadOnly="True" 
            SortExpression="Cno" />
                                    <asp:BoundField DataField="Chapternum" HeaderText="章节号" ReadOnly="True" 
            SortExpression="Chapternum" />
                                    <asp:BoundField DataField="Chaptername" HeaderText="章节名" 
            SortExpression="Chaptername" />
                                    <asp:BoundField DataField="Chapterintroduce" HeaderText="章节介绍" 
            SortExpression="Chapterintroduce" />
                                    <asp:BoundField DataField="Paper" HeaderText="试卷号" SortExpression="Paper" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourcePaper" runat="server" 
    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
    SelectCommand="SELECT * FROM [chapter]"></asp:SqlDataSource>
                            </asp:Panel>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
