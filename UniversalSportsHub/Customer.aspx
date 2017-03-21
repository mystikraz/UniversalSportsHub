<%@ Page Title="Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="UniversalSportsHub.Customer" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
    <div class="row" style="padding-top:20px;">
        <div class="col-md-4">
            <h3>Enter New Customer Here:</h3>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CUST_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" ReadOnly="True" SortExpression="CUST_ID" />
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="MEMBERSHIP_TYPE" HeaderText="MEMBERSHIP_TYPE" SortExpression="MEMBERSHIP_TYPE" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
        </div>
       <div class="col-md-4">
       
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CUST_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" ReadOnly="True" SortExpression="CUST_ID" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="MEMBERSHIP_TYPE" HeaderText="MEMBERSHIP_TYPE" SortExpression="MEMBERSHIP_TYPE" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUST_ID&quot; = :CUST_ID" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUST_ID&quot;, &quot;First Name&quot;, &quot;last name&quot;, &quot;ADDRESS&quot;, &quot;MEMBERSHIP_TYPE&quot;, &quot;DOB&quot;) VALUES (:CUST_ID, :First_Name, :last_name, :ADDRESS, :MEMBERSHIP_TYPE, :DOB)" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT &quot;CUST_ID&quot;, &quot;First Name&quot; AS First_Name, &quot;last name&quot; AS last_name, &quot;ADDRESS&quot;, &quot;MEMBERSHIP_TYPE&quot;, &quot;DOB&quot; FROM &quot;CUSTOMER&quot;" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;First Name&quot; = :First_Name, &quot;last name&quot; = :last_name, &quot;ADDRESS&quot; = :ADDRESS, &quot;MEMBERSHIP_TYPE&quot; = :MEMBERSHIP_TYPE, &quot;DOB&quot; = :DOB WHERE &quot;CUST_ID&quot; = :CUST_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CUST_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CUST_ID" Type="String" />
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="MEMBERSHIP_TYPE" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="MEMBERSHIP_TYPE" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="CUST_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
          
            
        </div>
        
    </div>

</asp:Content>
