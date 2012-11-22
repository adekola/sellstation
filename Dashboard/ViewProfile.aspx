<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="SB.Sellstation.Website.Dashboard.ViewProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="demo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph1" runat="server">
<article>
<header>
<h3>Edit Profile</h3>
</header>
<div class="module_content">
<fieldset class="search">
        <legend></legend>
			<label>First Name</label><input type="text" placeholder="First name appears here.." runat="server" id="fname"/>
            <div class="clear"></div>
            <label>Last Name</label><input type="text" placeholder="Last name appears here.." runat="server" id="lname"/>
            <div class="clear"></div>
            <label>Email</label><input type="text" placeholder="Email appears here" runat="server" id="email" />
            <div class="clear"></div>
            <label>Phone</label><input type="text" placeholder="Phone number appears here" runat="server" id="phone" />
		<div class="clear"></div><br />
        &nbsp;&nbsp;<input type="submit" value="Save Changes" class="alt_btn" />
        </fieldset>

</div>
</article>
</asp:Content>
