<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="UniversalSportsHub.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row" style="padding-top:20px;">
        <div class="col-md-4">
            <h3>Enter New Staff Here:</h3>
            <br />

            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
                    <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
                    <asp:BoundField DataField="STAFF_ADDRESS" HeaderText="STAFF_ADDRESS" SortExpression="STAFF_ADDRESS" />
                    <asp:BoundField DataField="STAFF_CONTACT" HeaderText="STAFF_CONTACT" SortExpression="STAFF_CONTACT" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :original_STAFF_ID AND ((&quot;STAFF_NAME&quot; = :original_STAFF_NAME) OR (&quot;STAFF_NAME&quot; IS NULL AND :original_STAFF_NAME IS NULL)) AND ((&quot;STAFF_ADDRESS&quot; = :original_STAFF_ADDRESS) OR (&quot;STAFF_ADDRESS&quot; IS NULL AND :original_STAFF_ADDRESS IS NULL)) AND ((&quot;STAFF_CONTACT&quot; = :original_STAFF_CONTACT) OR (&quot;STAFF_CONTACT&quot; IS NULL AND :original_STAFF_CONTACT IS NULL))" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;STAFF_ADDRESS&quot;, &quot;STAFF_CONTACT&quot;) VALUES (:STAFF_ID, :STAFF_NAME, :STAFF_ADDRESS, :STAFF_CONTACT)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFF_NAME&quot; = :STAFF_NAME, &quot;STAFF_ADDRESS&quot; = :STAFF_ADDRESS, &quot;STAFF_CONTACT&quot; = :STAFF_CONTACT WHERE &quot;STAFF_ID&quot; = :original_STAFF_ID AND ((&quot;STAFF_NAME&quot; = :original_STAFF_NAME) OR (&quot;STAFF_NAME&quot; IS NULL AND :original_STAFF_NAME IS NULL)) AND ((&quot;STAFF_ADDRESS&quot; = :original_STAFF_ADDRESS) OR (&quot;STAFF_ADDRESS&quot; IS NULL AND :original_STAFF_ADDRESS IS NULL)) AND ((&quot;STAFF_CONTACT&quot; = :original_STAFF_CONTACT) OR (&quot;STAFF_CONTACT&quot; IS NULL AND :original_STAFF_CONTACT IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_STAFF_ID" Type="String" />
                    <asp:Parameter Name="original_STAFF_NAME" Type="String" />
                    <asp:Parameter Name="original_STAFF_ADDRESS" Type="String" />
                    <asp:Parameter Name="original_STAFF_CONTACT" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                    <asp:Parameter Name="STAFF_NAME" Type="String" />
                    <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                    <asp:Parameter Name="STAFF_CONTACT" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STAFF_NAME" Type="String" />
                    <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                    <asp:Parameter Name="STAFF_CONTACT" Type="Decimal" />
                    <asp:Parameter Name="original_STAFF_ID" Type="String" />
                    <asp:Parameter Name="original_STAFF_NAME" Type="String" />
                    <asp:Parameter Name="original_STAFF_ADDRESS" Type="String" />
                    <asp:Parameter Name="original_STAFF_CONTACT" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>


            </div>
          <div class="col-md-4">


              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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


            </div>
         </div>
</asp:Content>
