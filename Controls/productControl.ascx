<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productControl.ascx.cs" Inherits="Controls_productControl" %>

<div class="prod_box" runat="server">
        	<div class="top_prod_box" runat="server"></div>
            <div class="center_prod_box" runat="server">            
                 <div class="product_title" runat="server"><a href="#"><asp:Label id="productName" runat="server"></asp:Label></a></div>
                 <div class="product_img" runat="server"><a href="#"><img src="~/Images/p5.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price" runat="server"><span class="price"><asp:Label id="productPrice" runat="server"></asp:Label></span></div>                        
            </div>
            <div class="bottom_prod_box" runat="server"></div>             
            <div class="prod_details_tab" runat="server">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="~/Images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" class="prod_details">details</a>            
            </div>                     
        </div> 
