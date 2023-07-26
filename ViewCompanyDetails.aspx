<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="ViewCompanyDetails.aspx.cs" Inherits="View_Company_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 441px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
        <br />
        <table class="style3">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="View Company Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Qualification"></asp:Label>
                    :&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlqual" runat="server" DataSourceID="ObjectDataSource1" 
                        DataTextField="Qualification" DataValueField="Qualification">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="Getcandqual" 
                        TypeName="DataAccessLayer"></asp:ObjectDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grvCompDet" runat="server" DataSourceID="ObjectDataSource2" 
                        Visible="False" EnableModelValidation="True" OnSelectedIndexChanged="grvCompDet_SelectedIndexChanged" >
                        <Columns>
                            <asp:CommandField SelectText="Register" ShowSelectButton="True" />
                        </Columns>
                        <EmptyDataTemplate>
                            not found
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="Getcompdet" 
                        TypeName="DataAccessLayer">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlqual" Name="qual" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>

