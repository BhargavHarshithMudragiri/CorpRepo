<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="AddNewCandidate.aspx.cs" Inherits="AddNewCandidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        height: 23px;
    }
    .style5
    {
        width: 386px;
    }
    .style6
    {
        height: 23px;
        width: 386px;
    }
    .auto-style1 {
        width: 137px;
    }
    .auto-style2 {
        height: 23px;
        width: 137px;
    }
    .auto-style3 {
        text-align: left;
    }
    .auto-style4 {
        height: 23px;
        width: 146px;
    }
    .auto-style5 {
            width: 146px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td class="auto-style3" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium" colspan="2">
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Add New Candidate"></asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style4" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="style4" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:TextBox ID="txtName" runat="server" Font-Names="Verdana"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfName" runat="server" 
                ControlToValidate="txtName" ErrorMessage="Enter Name" Font-Names="Verdana"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="regexpName" runat="server" 
                ControlToValidate="txtName" ErrorMessage="Name must be charcaters" 
                ValidationExpression="([A-Z]*[a-z]*)*" Font-Names="Verdana"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
        </td>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:TextBox ID="txtAge" runat="server" Font-Names="Verdana"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfAge" runat="server" 
                ControlToValidate="txtAge" ErrorMessage="Enter Age" Font-Names="Verdana"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RangeValidator ID="rangeAge" runat="server" ControlToValidate="txtAge" 
                ErrorMessage="Age must be in between 18 and 60" MaximumValue="60" 
                MinimumValue="18" Type="Integer" Font-Names="Verdana"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Label ID="Label4" runat="server" Text="Qualification"></asp:Label>
        </td>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:DropDownList ID="ddlQualification" runat="server" 
                AppendDataBoundItems="True" Font-Names="Verdana">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>BE</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>Btech</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="rfddlqual" runat="server" 
                ControlToValidate="ddlQualification" ErrorMessage="Select a value" 
                InitialValue="select" Font-Names="Verdana"></asp:RequiredFieldValidator><br />
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Label ID="Label5" runat="server" Text="Experience"></asp:Label>
        </td>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:TextBox ID="txtExperience" runat="server" Font-Names="Verdana"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfExperience" runat="server" 
                ControlToValidate="txtExperience" ErrorMessage="Enter experience" Font-Names="Verdana"></asp:RequiredFieldValidator>
            &nbsp;<asp:RangeValidator ID="rvexp" runat="server" ControlToValidate="txtExperience" 
                ErrorMessage="Experience must be between 0 and 30" MaximumValue="30" 
                MinimumValue="0" Type="Integer" Font-Names="Verdana"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
        </td>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:TextBox ID="txtEmaiId" runat="server" Font-Names="Verdana"></asp:TextBox>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
        </td>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:TextBox ID="txtContactNumber" runat="server" Font-Names="Verdana"></asp:TextBox>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            &nbsp;</td>
        <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium">
            <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" Font-Names="Verdana" Height="35px" Width="61px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

