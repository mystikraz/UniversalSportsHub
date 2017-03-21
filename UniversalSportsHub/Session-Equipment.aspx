<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Session-Equipment.aspx.cs" Inherits="UniversalSportsHub.Session_Equipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md5">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SESSION_ID,EQUIP_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="SESSION_ID" HeaderText="SESSION_ID" ReadOnly="True" SortExpression="SESSION_ID" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="START_TIME" HeaderText="START_TIME" SortExpression="START_TIME" />
                    <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
                    <asp:BoundField DataField="EQUIP_ID" HeaderText="EQUIP_ID" ReadOnly="True" SortExpression="EQUIP_ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT &quot;session&quot;.SESSION_ID, &quot;session&quot;.&quot;date&quot;, &quot;session&quot;.START_TIME, &quot;session&quot;.PERIOD, EQUIPMENT.EQUIP_ID, EQUIPMENT.NAME FROM ACTIVITY, &quot;activity equipment&quot;, EQUIPMENT, &quot;session&quot; WHERE ACTIVITY.ACT_ID = &quot;activity equipment&quot;.ACT_ID AND &quot;activity equipment&quot;.EQUIP_ID = EQUIPMENT.EQUIP_ID AND ACTIVITY.ACT_ID = &quot;session&quot;.ACT_ID"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
