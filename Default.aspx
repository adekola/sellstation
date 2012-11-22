<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="ss" tagname="Product" Src="~\Controls\productControl.ascx" %>

<%-- Add content controls here --%>
<asp:Content ContentPlaceHolderID="centerContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            var cartCount = 0;
            var cartIDs = Array();
            $('td > .button1').click(function (e) {
                e.preventDefault();
                var item_id = $(this).val();
                var items = JSON.stringify({ 'id': item_id });
                cartIDs[cartCount] = items;
                cartCount++;
                $('#itemCount').html(cartCount);
                $.ajax({
                    type: "POST",
                    data: items,
                    url: "Default.aspx/AddCartItem",
                    dataType: "json",
                    contentType: "application/json",
                    success: function (msg) {
                        $.notty({
                            content: msg.d + ' was added you your cart',
                            timeout: 5000,
                            showTime: true
                        });
                    }
                });
            });
        });
    </script>


<div class="center_content" id="content" runat="server">
   	
   <div class="center_title_bar" id="latest" runat="server">Latest Products</div>
    
    <div id="products" runat="server">
    
    </div>
 <!--<ss:Product ID="product" runat="server"/>
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Iphone Apple</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/p4.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>             
            </div>                     
        </div>
 
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Samsung Webcam</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/p5.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>            
            </div>                     
        </div> 
 
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Motorola 156 MX-VL</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>            
            </div>                     
        </div>
    
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Iphone Apple</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/p4.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>             
            </div>                     
        </div>
 
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Samsung Webcam</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/p5.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>            
            </div>                     
        </div> 
 -->
 
 <div class="center_title_bar">Recommended Products</div>
 
 
      	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Motorola 156 MX-VL</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>            
            </div>                     
        </div>
    
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Iphone Apple</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/p4.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
           <a href="Details.aspx" class="prod_details">details</a>             
            </div>                     
        </div>
 
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Details.aspx">Samsung Webcam</a></div>
                 <div class="product_img"><a href="Details.aspx"><img src="images/p5.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="Details.aspx" class="prod_details">details</a>            
            </div>                     
        </div> 
   </div><!-- end of center content -->

</asp:Content>