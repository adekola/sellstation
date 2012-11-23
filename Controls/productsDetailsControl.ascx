<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productsDetailsControl.ascx.cs" Inherits="Controls_productsDetailsControl" %>

	<div class="center_title_bar" id="productTitleText" runat="server"></div>
    
    	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">            
                 
                 <div class="product_img_big">
                 <a href="javascript:popImage('images/big_pic.jpg','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]"><img src="~/Images/laptop.gif" alt="" title="" border="0" /></a>
                 <div class="thumbs">
                 <a href="#" title="header=[Thumb1] body=[&nbsp;] fade=[on]"><img src="~/Images/thumb1.gif" alt="" title="" border="0" /></a>
                 <a href="#" title="header=[Thumb2] body=[&nbsp;] fade=[on]"><img src="~/Images/thumb1.gif" alt="" title="" border="0" /></a>
                 <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="~/Images/thumb1.gif" alt="" title="" border="0" /></a>
                 </div>
                 </div>
                     <div class="details_big_box">
                         <div class="product_title_big"><label id="prodName" runat="server"></label></div>
                         <div class="specifications">
                            Description: <span class="blue"><label id="prodDesc" runat="server"></label></span><br />

                           Is there a Discount ? <span class="blue"><label id="isDiscount" runat="server"></label></span><br />
                            
                            Discount  <span class="blue"><label id="prodDiscount" runat="server"></label></span><br />

                             Delivery Options <span class="blue"><label id="deliveryOption" runat="server"></label></span><br />
                         </div>
                         
                         <div class="prod_price_big"> Price :<span class="reduce" id="old_price_span" runat="server"><label id="oldPrice" runat="server"></label></span> <span class="price"><label id="newPrice" runat="server"></label></span></div>
                         
                         <a href="#" class="addtocart">add to cart</a>
                     </div>                        
            </div>
            <div class="bottom_prod_box_big"></div>                                
       </div>
      