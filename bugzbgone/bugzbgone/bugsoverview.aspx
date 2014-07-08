<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bugsoverview.aspx.vb" Inherits="bugzbgone.bugsoverview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BugzBGoneConnectionString %>" SelectCommand="SELECT * FROM [bug]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pk_bugid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="pk_bugid" HeaderText="pk_bugid" InsertVisible="False" ReadOnly="True" SortExpression="pk_bugid" />
                <asp:BoundField DataField="bugtitle" HeaderText="bugtitle" SortExpression="bugtitle" />
                <asp:BoundField DataField="bugdescription" HeaderText="bugdescription" SortExpression="bugdescription" />
                <asp:BoundField DataField="bugpriority" HeaderText="bugpriority" SortExpression="bugpriority" />
                <asp:BoundField DataField="bugdate" HeaderText="bugdate" SortExpression="bugdate" />
                <asp:BoundField DataField="fk_bugowner" HeaderText="fk_bugowner" SortExpression="fk_bugowner" />
                <asp:BoundField DataField="fk_bugresponsible" HeaderText="fk_bugresponsible" SortExpression="fk_bugresponsible" />
                <asp:BoundField DataField="fk_bugproject" HeaderText="fk_bugproject" SortExpression="fk_bugproject" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
