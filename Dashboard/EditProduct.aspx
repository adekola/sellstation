<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="SB.Sellstation.Website.Dashboard.EditProduct" %>
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
        <legend></legend>
			<label>Product Name</label><asp:TextBox runat="server" ID="prod_name" AutoCompleteType="None"/>
            <div class="clear"></div>
            <label>Product Details</label><asp:TextBox runat="server" ID="pdetails" TextMode="MultiLine" />
            <div class="clear"></div>
            <label>Quantity</label><asp:TextBox runat="server" id="pquantity"/>
            <div class="clear"></div>
            <label>Price</label><asp:TextBox runat="server" id="p_price" />
            <fieldset style="width:48%; float:left; margin-right: 3%;">
            <legend></legend>
            <label>Category</label>
           <asp:DropDownList runat="server" ID="ct" />
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="SB.Sellstation.Website.Libraries.DbContext.SellStationDataClassesDataContext" 
                    EntityTypeName="" OrderBy="id" Select="new (id, name, description, Items)" 
                    TableName="Categories" Where="id == @id">
                    <WhereParameters>
                        <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="Id" 
                            Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </fieldset>
            <div class="clear"></div>
            <asp:Button runat="server" ID="save_changes" Text="Save Changes" 
            CssClass="alt_btn" onclick="save_changes_Click" />
<%--            <input type="submit" class="alt_btn" value="Save Changes" />
--%>            <input type="reset" class="btn btn-danger" value="Reset" />
		<br />
		</fieldset>
</div>
</article>
</asp:Content>
