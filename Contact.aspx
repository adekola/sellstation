﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%-- Add content controls here --%>
<asp:Content ContentPlaceHolderID="centerContent" runat="server">
<div class="center_content">
	<div class="center_title_bar">Contact Us</div>
    
    	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">            
                 
              	<div class="contact_form">
                           
                    <div class="form_row">
                    <label class="contact"><strong>Name:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>  

                    <div class="form_row">
                    <label class="contact"><strong>Email:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>Phone:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>Company:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>Message:</strong></label>
                    <input class="contact_textarea" ></input>
                    </div>

                    
                    <div class="form_row">
                    <a href="#" class="contact">send</a>
                    </div>      
                    
                </div> 
                
                                     
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
       
   	</div>
</asp:Content>