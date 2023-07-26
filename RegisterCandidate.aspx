<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="RegisterCandidate.aspx.cs" Inherits="RegisterCandidatePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="auto-style6" colspan="2">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Register Candidate<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Company Name:</td>
            <td class="auto-style6">
            <asp:TextBox ID="txtCompName" runat="server" ReadOnly="True" Font-Names="Verdana" Font-Size="12pt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Department</td>
            <td class="auto-style6">
            <asp:TextBox ID="txtDept" runat="server" style="margin-top: 3px" 
                ReadOnly="True" Font-Names="Verdana"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Candidate ID:</td>
            <td class="auto-style6">
            <asp:DropDownList ID="ddlcandId" runat="server" 
                DataSourceID="ObjectDataSource1" DataTextField="CandidateID" 
                DataValueField="CandidateID" Font-Names="Verdana">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="Getcandid" 
                TypeName="DataAccessLayer"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Registration Date:</td>
            <td class="auto-style6">
            <asp:TextBox ID="txtRegDate" runat="server" ReadOnly="True" Font-Names="Verdana"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <br />
            <asp:Button ID="btnReg" runat="server" Text="Register" onclick="btnReg_Click" Font-Names="Verdana" Font-Size="12pt" />
            </td>
        </tr>
    </table>
</asp:Content>

