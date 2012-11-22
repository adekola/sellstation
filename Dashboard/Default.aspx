<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SB.Sellstation.Website.Dashboard.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="demo" runat="server">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="cph1" ID="contented">
<script type="text/javascript">
    function fillCell(row, cellNumber, text) {
        var cell = row.insertCell(cellNumber);
        cell.innerHTML = text;
        cell.style.borderBottom = cell.style.borderRight = "solid 1px #aaaaff";
    }
    function addToClientTable(name, text) {
        var table = document.getElementById("<%= clientSide.ClientID %>");
        var row = table.insertRow(0);
        fillCell(row, 0, name);
        fillCell(row, 1, text);
    }

    function uploadError(sender, args) {
        addToClientTable(args.get_fileName(), "<span style='color:red;'>" + args.get_errorMessage() + "</span>");
    }
    function uploadComplete(sender, args) {
        var contentType = args.get_contentType();
        var text = args.get_length() + " bytes";
        if (contentType.length > 0) {
            text += ", '" + contentType + "'";
        }
        addToClientTable(args.get_fileName(), text);
    }
    </script>
<div class="tab_container">
            <header><h3 class="tabs_involved">Store Manager</h3>
		<ul class="tabs">
    		<li><a href="#tab1">Products</a></li>
            <li><a href="#tab2">Orders</a></li>
		</ul>
		</header><!--The tab header for the dashboard content manager -->
			</div><!-- end of #tab1 --><!--Manages the User's stores -->
			
			<div id="tab1" class="tab_content">
			<table class="tablesorter" id="products_tbl" runat="server"> 
			<thead> 
				<tr>
                <th></th> 
    				<th>Product name</th> 
    				<th>Price</th> 
    				<th>Description</th>
                    <th>Discount</th>
    				<th>Actions</th> 
				</tr> 
			</thead> 
			<tbody> 
			</tbody> 
			</table>

            <div class="clear"></div>
        <article class="module width_full" id="nupro">
			<header><h3>Add New Product</h3></header>
				<div class="module_content">
						<fieldset>
                        <legend></legend>
							<label>Product  Name</label>
							<input type="text" id="txtprodName" runat="server">
						</fieldset>
						<fieldset>
                        <legend></legend>
							<label>Description</label>
							<textarea rows="12" cols="0"  id="txtprodDesc" runat="server"></textarea>
						</fieldset>
                        <fieldset>
                        <legend></legend>
							<label>Percentage Discount</label>
							<input type="text" id="txtDiscount" runat="server">
						</fieldset>
                        <div style="clear:both"></div>
                        <fieldset>
                        <legend></legend>
							<label>Price</label>
							<input type="text" id="txtPrice" runat="server">
						</fieldset>
                        <div style="clear:both"></div>
                        <fieldset style="">
                        <legend></legend>
           <asp:AsyncFileUpload
            OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" 
            runat="server" ID="AsyncFileUpload1" Width="400px" UploaderStyle="Modern" 
            UploadingBackColor="#CCFFFF" ThrobberID="myThrobber" CssClass="files alt_btn"
             />&nbsp;<div style="clear:both"></div>
             <asp:Label runat="server" ID="myThrobber" style="display:none;" ><img align="absmiddle" alt="" src="uploading.gif" /></asp:Label>
             <asp:Label runat="server" Text="&nbsp;" ID="uploadResult" />           
                         <div><strong>Uploaded Files:</strong></div>
        <table style="border-collapse: collapse; border-left: solid 1px #aaaaff; border-top: solid 1px #aaaaff;" runat="server" cellpadding="3" id="clientSide" />
                        </fieldset>
                        <div style="clear:both"></div>
						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
                        <legend></legend>    
                        <label>Category</label>
                           <%--<asp:DropDownList ID="prodcategory" runat="server" 
                                DataSourceID="categoriesdatasource" DataTextField="Name" 
                                DataValueField="Id">
                            </asp:DropDownList>
						    <asp:ObjectDataSource ID="categoriesdatasource" runat="server" 
                                SelectMethod="GetCategories" 
                                TypeName="SB.Sellstation.Website.Libraries.CRUD.CategoriesCRUD">
                            </asp:ObjectDataSource>--%>
						</fieldset>
						<div class="clear"></div>
				</div>
			<footer>
				<div class="submit_link">
					<select>
						<option>Draft</option>
						<option>Created</option>
					</select>
                    <asp:Button runat="server" ID="save_new_product" 
                        CssClass="alt_btn" Text="Add Product" 
                        onclick="save_new_product_Click" />
<%--					<button id="Button1" type="submit" runat="server" class="btn btn-primary btn-large">Save</button>
--%>					<input type="reset" value="Reset">
				</div><div class="clear"></div>
			</footer>
		</article><!-- end of post new article -->
        <div class="clear"></div>

			</div><!-- end of #tab2 --><!--Manages User's Products -->

			<div id="tab2" class="tab_content">
            <table class="tablesorter" id="transaction_tbl" runat="server"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Buyer's Name</th> 
    				<th>Items Bought</th> 
    				<th>Quantity</th>
                    <th>Transaction ID</th>
    				<th>Actions</th> 
				</tr> 
			</thead> 
			<tbody>
             <tr> 
   					<td><input type="checkbox"></td> 
    				<td>Centrix</td> 
    				<td>HP laptop</td> 
    				<td>25 pieces</td>
                    <td>2g5rh76fd8s</td> 
    				<td><input type="image" src="images/icn_edit.png" title="Process"><input type="image" src="images/icn_trash.png" title="Delete"></td> 
				</tr>
                </tbody>
                </table>
            </div> <!-- end of #tab2 --><!--Manages User's Transactions -->

           <div id="tab3" class="tab_content">
			<table class="tablesorter" id="category_tbl" runat="server"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Category Id</th> 
    				<th>Category Name</th> 
    				<th>Category Description</th>
                    <th>Actions</th>
				</tr> 
			</thead> 
			<tbody> 
				<tr> 
   					<td><input type="checkbox"></td> 
    				<td>1</td> 
    				<td>Food</td> 
    				<td>all things food...belle mata full ground for here!!</td> 
    				<td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td> 
				</tr> 
				<tr> 
   					<td><input type="checkbox"></td> 
    				<td>2</td> 
    				<td>Electronics </td> 
    				<td>gadgets na im full hia put!!</td> 
   				 	<td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td> 
				</tr>
                <tr> 
   					<td><input type="checkbox"></td> 
    				<td>3</td> 
    				<td>Automobiles</td> 
    				<td>anything on wheels na im full hia put!!</td> 
   				 	<td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td> 
				</tr>
                <tr> 
   					<td><input type="checkbox"></td> 
    				<td>4</td> 
    				<td>Soft drinks</td> 
    				<td>coool refreshment na im full hia put!!</td> 
   				 	<td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td> 
				</tr>
			</tbody> 
			</table>
            <div class="clear"></div>
        <article class="module width_full" id="Article1">
			<header><h3>Add New Category</h3></header>
            		<div class="module_content">
						<fieldset>
                        <legend></legend>
							<label>Category Name</label>
							<input type="text" id="txtCatName" runat="server">
						</fieldset>
						<fieldset>
                        <legend></legend>
							<label>Category Description</label>
							<textarea rows="12"  id="txtCatDesc" runat="server"></textarea>
						</fieldset><div class="clear"></div>
				</div>
            <footer>
				<div class="submit_link">
					<button id="btnSaveCat" type="submit" runat="server" class="btn btn-primary">Save</button>
                </div>
			</footer>
            </article>
            <div class="clear"></div>

			</div><!-- end of #tab2 --><!--Manages User's Categories -->

</div><!-- end of .tab_container -->
</asp:Content>
