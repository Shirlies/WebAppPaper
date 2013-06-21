<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherInfo.aspx.cs" Inherits="ExamLibrary.TeacherInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 120px;
        }
        .style2
        {
            width: 77px;
        }
        .style3
        {
            width: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div style="position:relative; top: -14px; left: -10px; height: 256px; width: 1369px;">
         <div style="position:absolute;left:236px; top:70px;left:190px; color:#000; width: 1101px;">
         <p ><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 暨</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:normal;text-decoration:none;color:#000000;">南 大 学</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">试</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp;</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">题</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;"> 库</span><span style="font-family:Arial;font-size:72px;font-weight:normal;font-style:italic;text-decoration:none;color:#000000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;"></span></p><p style="text-align:center;"><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family:Arial;font-size:20px;font-weight:normal;font-style:normal;text-decoration:none;color:#666600;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             老师信息</span></p>
         </div>
         <img src="img/head.png" width="auto"/>
         </div>
    </div>
    <table style="width: 100%;">
        <tr>
            <td colspan="6" 
                style="font-family:Arial;font-size:16px;font-weight:normal;font-style:normal;text-decoration:none;color:#00FF00">
                老师，欢迎进入您的个人信息页</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/ExamInfo_Teacher.aspx">试题库</asp:HyperLink>
            </td>
            <td class="style1">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">退出</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                <asp:Menu ID="Menu2" runat="server" BackColor="#F7F6F3" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#7C6F57" onmenuitemclick="Menu2_MenuItemClick" 
                    StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#F7F6F3" />
                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                    <Items>
                        <asp:MenuItem Target="PanelInfo" Text="个人信息" Value="个人信息"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#5D7B9D" />
                </asp:Menu>
            </td>
            <td colspan="2">
                <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#666666" onmenuitemclick="Menu1_MenuItemClick" 
                    StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <Items>
                        <asp:MenuItem Text="试题信息" Value="试题信息">
                            <asp:MenuItem Target="PanelCourseInfo" Text="课程信息" Value="课程信息"></asp:MenuItem>
                            <asp:MenuItem Target="PanelPaperInfo" Text="试卷信息" Value="试卷信息"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
                </asp:Menu>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="12">
                <hr dir="ltr" />
            </td>
        </tr>
        <tr>
            <td colspan="10" rowspan="6">
                <asp:Panel ID="PanelInfo" runat="server" Height="186px" Width="663px">
                    <table style="width:100%; height: 139px;">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td >
                                </td>
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
                            <td style="text-align:right">
                               <label>名字</label></td>
                            <td>
                                <asp:TextBox ID="TextBoxTeacherName" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="text-align:right">
                                <label>密码</label></td>
                            <td>
                                <asp:TextBox ID="TextBoxTeacherPwd" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td  style="text-align:right">
                                <label>学院</label></td>
                            <td>
                                <asp:TextBox ID="TextBoxAcademy" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td  style="text-align:right">
                                <label>邮箱</label></td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="ButtonSaveInfo" runat="server" Text="保存修改" 
                                    onclick="ButtonSaveInfo_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="PanelCourseInfo" runat="server" Height="175px" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" 
    CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                        DataKeyNames="Cno" DataSourceID="SqlDataSourceCourseInfo" Width="660px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Cno" HeaderText="课程号" ReadOnly="True" 
                                SortExpression="Cno" />
                            <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname" />
                            <asp:BoundField DataField="Majorname" HeaderText="专业名" 
                                SortExpression="Majorname" />
                            <asp:BoundField DataField="Cintroduce" HeaderText="课程介绍" 
                                SortExpression="Cintroduce" />
                            <asp:BoundField DataField="Cteacher" HeaderText="授课老师" 
                                SortExpression="Cteacher" />
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
                    <asp:SqlDataSource ID="SqlDataSourceCourseInfo" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
                        SelectCommand="SELECT Cno, Cname, Majorname, Cintroduce, Cteacher FROM course WHERE (Cteacher = @user )">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="胡君" Name="user" SessionField="user" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>

                    <asp:Panel ID="PanelPaperInfo" runat="server" Height="93px" Visible="False">
                        <asp:GridView ID="GridView2" runat="server" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cno,Chapternum" 
    DataSourceID="SqlDataSourceChapterInfo" ForeColor="#333333" GridLines="None" Width="670px">
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
                        <asp:SqlDataSource ID="SqlDataSourceChapterInfo" runat="server" 
    ConnectionString="<%$ ConnectionStrings:examLibConnectionString %>" 
    
                            SelectCommand="select * from [chapter] where [Cno] in (select [Cno] from [course] where [Cteacher] = @user)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="胡君" Name="user" SessionField="user" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </asp:Panel>
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">
                
            </td>
            <td colspan="2" rowspan="2">
                
            </td>
            <td colspan="2" rowspan="2">
                
            </td>
            <td colspan="2" rowspan="2">
                
            </td>
            <td colspan="2" rowspan="2">
                
            </td>
            <td rowspan="2">
                
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td>
                
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td>
                
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td>
                
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td colspan="2">
                
            </td>
            <td>
                
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="10" rowspan="3">
                
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
