﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UniversalSportsHub._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Universal Sports Hub</h1>
        <p class="lead">Welcome to Universal Sports Hub</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Customer Details</h2>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ACTIVITY&quot; WHERE &quot;ACT_ID&quot; = :original_ACT_ID AND ((&quot;ACT_NAME&quot; = :original_ACT_NAME) OR (&quot;ACT_NAME&quot; IS NULL AND :original_ACT_NAME IS NULL))" InsertCommand="INSERT INTO &quot;ACTIVITY&quot; (&quot;ACT_ID&quot;, &quot;ACT_NAME&quot;) VALUES (:ACT_ID, :ACT_NAME)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ACTIVITY&quot;" UpdateCommand="UPDATE &quot;ACTIVITY&quot; SET &quot;ACT_NAME&quot; = :ACT_NAME WHERE &quot;ACT_ID&quot; = :original_ACT_ID AND ((&quot;ACT_NAME&quot; = :original_ACT_NAME) OR (&quot;ACT_NAME&quot; IS NULL AND :original_ACT_NAME IS NULL))">
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
            
            
        <%--<asp:Label ID="lblfirstName" runat="server" Text="Label">First Name</asp:Label>
            <asp:TextBox ID="TextFirstName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblLastName" runat="server" Text="Label">LastName</asp:Label>
            <asp:TextBox ID="TextLastName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSave" runat="server" Text="Save Details" OnClick="btnSave_Click" />--%>
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
            <hr />
            
        </div>
       
    </div>

</asp:Content>
