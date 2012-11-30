<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cartControl.ascx.cs" Inherits="Controls_cartControl" %>

<div class="shopping_cart">
        	<div class="cart_title">Shopping cart</div>
            
            <div class="cart_details">
            Total Items: <span class="price"><asp:Label id="cartItems" runat="server"></asp:Label></span>
            <br />
            <span class="border_cart"></span>
            Total Cost: <span class="price"><asp:Label id="cartCost" runat="server"></asp:Label></span>
            </div>
            
            <div class="cart_icon"><a href="#" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="~/Images/shoppingcart.png" alt="" title="" width="48" height="48" border="0" /></a></div>
        
        </div>
   