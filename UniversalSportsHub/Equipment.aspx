<%@ Page Title="Equipment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Equipment.aspx.cs" Inherits="UniversalSportsHub.Equipment" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
     <div class="row" style="padding-top:20px;">
        <div class="col-md-4">
            <h2>Equipment Details</h2>

            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EQUIP_ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" Width="164px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="EQUIP_ID" HeaderText="EQUIP_ID" ReadOnly="True" SortExpression="EQUIP_ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            
            <hr />
            
        </div>
        <div class="col-md-4">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:uniConnectionString %>" DeleteCommand="DELETE FROM &quot;EQUIPMENT&quot; WHERE &quot;EQUIP_ID&quot; = :original_EQUIP_ID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL))" InsertCommand="INSERT INTO &quot;EQUIPMENT&quot; (&quot;EQUIP_ID&quot;, &quot;NAME&quot;) VALUES (:EQUIP_ID, :NAME)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:uniConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EQUIPMENT&quot;" UpdateCommand="UPDATE &quot;EQUIPMENT&quot; SET &quot;NAME&quot; = :NAME WHERE &quot;EQUIP_ID&quot; = :original_EQUIP_ID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_EQUIP_ID" Type="String" />
                    <asp:Parameter Name="original_NAME" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EQUIP_ID" Type="String" />
                    <asp:Parameter Name="NAME" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="original_EQUIP_ID" Type="String" />
                    <asp:Parameter Name="original_NAME" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

</asp:Content>
