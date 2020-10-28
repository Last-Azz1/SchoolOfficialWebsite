<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="userManager.aspx.cs" Inherits="userManager" Title="无标题页" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="margin:70px auto 0px auto; width:800px; height:500px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"  CellPadding="4" HorizontalAlign="Center" Font-Size="Large" Font-Bold="true"
                        ForeColor="#333333" GridLines="None" Width="800px" 
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating" 
        OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="id">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly=true/>
            <asp:BoundField DataField="username" HeaderText="name"/>
            <asp:BoundField DataField="password" HeaderText="password" />
            <asp:CommandField ShowEditButton="True" HeaderText="编辑" ButtonType="Button"  CausesValidation="False" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="删除" ButtonType="Button"  CausesValidation="False" />
        </Columns>
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </asp:Content>

