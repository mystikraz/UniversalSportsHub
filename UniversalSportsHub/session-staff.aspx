<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="session-staff.aspx.cs" Inherits="UniversalSportsHub.session_staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
       <div class="col-md-5">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SESSION_ID,STAFF_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="SESSION_ID" HeaderText="SESSION_ID" ReadOnly="True" SortExpression="SESSION_ID" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="START_TIME" HeaderText="START_TIME" SortExpression="START_TIME" />
                <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
                <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
                <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
                <asp:BoundField DataField="STAFF_ADDRESS" HeaderText="STAFF_ADDRESS" SortExpression="STAFF_ADDRESS" />
                <asp:BoundField DataField="STAFF_CONTACT" HeaderText="STAFF_CONTACT" SortExpression="STAFF_CONTACT" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT &quot;session&quot;.SESSION_ID, &quot;session&quot;.&quot;date&quot;, &quot;session&quot;.START_TIME, &quot;session&quot;.PERIOD, STAFF.STAFF_ID, STAFF.STAFF_NAME, STAFF.STAFF_ADDRESS, STAFF.STAFF_CONTACT FROM &quot;session&quot;, SESSION_STAFF, STAFF WHERE &quot;session&quot;.SESSION_ID = SESSION_STAFF.SESSION_ID AND SESSION_STAFF.STAFF_ID = STAFF.STAFF_ID"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT &quot;session&quot;.SESSION_ID, &quot;session&quot;.&quot;date&quot;, &quot;session&quot;.START_TIME, &quot;session&quot;.PERIOD, STAFF.STAFF_NAME, STAFF.STAFF_ADDRESS, STAFF.STAFF_CONTACT FROM &quot;session&quot;, SESSION_STAFF, STAFF WHERE &quot;session&quot;.SESSION_ID = SESSION_STAFF.SESSION_ID AND SESSION_STAFF.STAFF_ID = STAFF.STAFF_ID"></asp:SqlDataSource>
    </div>

    </div>
    
    
</asp:Content>
