<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Activity.aspx.cs" Inherits="UniversalSportsHub.Activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="padding-top:20px;">
        <div class="col-md-4">
            <h3>Enter New Activity Here:</h3>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ACT_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ACT_ID" HeaderText="ACT_ID" ReadOnly="True" SortExpression="ACT_ID" />
                    <asp:BoundField DataField="ACT_NAME" HeaderText="ACT_NAME" SortExpression="ACT_NAME" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" DeleteCommand="DELETE FROM &quot;ACTIVITY&quot; WHERE &quot;ACT_ID&quot; = :original_ACT_ID AND ((&quot;ACT_NAME&quot; = :original_ACT_NAME) OR (&quot;ACT_NAME&quot; IS NULL AND :original_ACT_NAME IS NULL))" InsertCommand="INSERT INTO &quot;ACTIVITY&quot; (&quot;ACT_ID&quot;, &quot;ACT_NAME&quot;) VALUES (:ACT_ID, :ACT_NAME)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ACTIVITY&quot;" UpdateCommand="UPDATE &quot;ACTIVITY&quot; SET &quot;ACT_NAME&quot; = :ACT_NAME WHERE &quot;ACT_ID&quot; = :original_ACT_ID AND ((&quot;ACT_NAME&quot; = :original_ACT_NAME) OR (&quot;ACT_NAME&quot; IS NULL AND :original_ACT_NAME IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ACT_ID" Type="String" />
                    <asp:Parameter Name="original_ACT_NAME" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ACT_ID" Type="String" />
                    <asp:Parameter Name="ACT_NAME" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ACT_NAME" Type="String" />
                    <asp:Parameter Name="original_ACT_ID" Type="String" />
                    <asp:Parameter Name="original_ACT_NAME" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
        <div class="col-md-4">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ACT_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ACT_ID" HeaderText="ACT_ID" ReadOnly="True" SortExpression="ACT_ID" />
                    <asp:BoundField DataField="ACT_NAME" HeaderText="ACT_NAME" SortExpression="ACT_NAME" />
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
            </div>
    </div>
</asp:Content>
