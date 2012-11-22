<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="SB.Sellstation.Website.Dashboard.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="demo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph1" runat="server">
<article>
<header>
<h3>Edit product</h3>
</header>
<div class="module_content">
<fieldset class="search">
        <legend><h2>Edit Category</h2></legend>
			<label>Category Name</label><input type="text" placeholder="category name appears here.." runat="server" id="catname"/>
            <div class="clear"></div>
            <label>Description</label><textarea rows="12" cols="0" runat="server" id="desc"></textarea>
            <div class="clear"></div>
            <asp:Button runat="server" ID="save_changes" Text="Save Changes" 
            CssClass="alt_btn" onclick="save_changes_Click" />
<%--            <input type="submit" class="alt_btn" value="Save Changes" />
--%>            <input type="reset" class="btn btn-danger" value="Reset" />
		</fieldset>
</div>
</article>
</asp:Content>
