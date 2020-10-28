<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="newsManager.aspx.cs" Inherits="newsManager" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin:70px auto 0px auto; width:800px; height:500px">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        AllowPaging="True" AllowSorting="True" PageSize="10"
        CellPadding="4" HorizontalAlign="Center" Font-Size="Large" Font-Bold="True"
                        ForeColor="#333333" GridLines="None" Width="800px" 
        DataKeyNames="id" onrowcancelingedit="GridView2_RowCancelingEdit" 
        onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
        onrowupdating="GridView2_RowUpdating" 
        onpageindexchanging="GridView2_PageIndexChanging">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly=true/>
            <asp:BoundField DataField="newsTitle" HeaderText="标题"/>
            <asp:BoundField DataField="newsTime" HeaderText="时间" />
            <asp:BoundField DataField="author" HeaderText="作者" />
            <asp:CommandField ShowEditButton="True" HeaderText="编辑" ButtonType="Button"  CausesValidation="False" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="删除" ButtonType="Button"  CausesValidation="False" />
        </Columns>
        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    </div>
</asp:Content>

