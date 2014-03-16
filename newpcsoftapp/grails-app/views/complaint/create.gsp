<%@ page import="newpcsoftapp.Consumer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="layout" content="main"/>
<title>PCMA</title>

</head>
<body>

<div id="templamteo_body_wrapper">
<div id="templatemo_wrapper">
	<div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    
    	<div id="templatemo_sidebar">
        	
            <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Website Name</a><span><a target="_blank">Power Consumption Monitoring Software Application (PCMSA)</a></span></h1></div>
            
            <div id="templatemo_menu">
                <ul>
                    <li><a href="${createLink(uri: '/')}">Home</a></li>
					<g:if test="${!session.username}">
						<li><a class="logout" href="/newpcsoftapp/consumer/login">Login</a></li>
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history">Charts History</a></li>
						<li><a href="#">Inbox</a></li>
					</g:else>
					<li><a href="/newpcsoftapp/complaint/create" class="current">Contact Us</a></li>
					<li><a href="#">Devices</a></li>
                </ul>    	
			</div>
            
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
            
            <div class="content_box">
            	<h2>Contact Us</h2>
				<p><em>Worries? Concerns? Complaints?</em></br>  
				Send it to us now. Please feel free to reach us via the contact informations listed below. 
				<g:if test="${!session.username}">Or <a href="/newpcsoftapp/consumer/login">login</a> now to send us a form for your concerns.</g:if>
				It is always our pleasure to serve you.</p>
				
				<div class="col_w280 float_l" id="map">
                    <h3>Map</h3>
                		<img src="${resource(dir: 'images', file: 'map_big.png')}" alt="Map" />
                </div>

				<div class="col_w280 float_r">
                	<h3>Our Location</h3>
                    <h6><a target="_blank">ILPI Main Office:</a></h6>
                    Brother Jeffrey Road,<br />
                    Pala-o, Iligan City<br />
                    9200 Lanao del Norte Philippines<br />
                    
                    <h6><a target="_blank">Call us thru telephone numbers:</a></h6>
                    (063) 222-2777<br />
                    (063) 221-5708<br />

                </div>
                <div class="cleaner"></div>				
				
			<g:if test="${session.username}">	
				<div id="cp_contact_form">
				</br>
				<h4>Quick Contact Form</h4>
                <g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${race}">
					<div class="errors">
					<g:renderErrors bean="${consumer}" as="list" />
					</div>
				</g:hasErrors>
				<g:form action="save" >
				<div class="dialog" align="left">
					<g:render template="form"/>
				</div>
					<g:submitButton name="create" class="save" class="submit_btn float_l" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</g:form>
				</div>
            </g:if>
         
			</div> <!-- end of content -->
		
		
    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="templatemo_footer">
    
        Copyright &#169; 2014 <a href="/">Mirax Development - Power Consumption Monitoring Software Application</a>
        
    </div> <!-- end of templatemo_footer -->
</div> <!-- end of wrapper -->
</div>
<g:javascript src = "logging.js" />

</body>
</html>