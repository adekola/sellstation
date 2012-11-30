<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productControl.ascx.cs" Inherits="Controls_productControl" %>

<div class="prod_box" runat="server">
        	<div class="top_prod_box" runat="server"></div>
            <div class="center_prod_box" runat="server">            
                 <div class="product_title" runat="server"><a href="#" id="detailsLink" runat="server"><asp:Label id="productName" runat="server"></asp:Label></a></div>
                 <div class="product_img" runat="server"><a href="#"><img src="~/Images/p5.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price" runat="server"><span class="price"><asp:Label id="productPrice" runat="server"></asp:Label></span></div> 
                 <div class="prod_details" runat="server">Qty</div>
                 <div class="prod_price" runat="server"><input ID="productQty" runat="server" class="qtyEntry" type="text" /></div>                       
            </div>
            <div class="bottom_prod_box" runat="server"></div>             
            <div class="prod_details_tab" runat="server">
            <a href="#" class="prod_details">Add to Cart</a>            
            </div>                     
        </div> 
