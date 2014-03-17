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
        	
            <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Website Name</a><span><a href="http://fr.mystockphoto.com" title="Stockphotos"  target="_blank">Power Consumption Monitoring Software Application (PCMSA)</a></span></h1></div>
            
             <div id="templatemo_menu">
                 <ul>
                    <li><a href="${createLink(uri: '/')}">Home</a></li>
					<g:if test="${!session.username}">
						<li><a href="/newpcsoftapp/consumer/login" class="current">Login</a></li>
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history">Charts History</a></li>
						<li><a href="/newpcsoftapp/response/list">Inbox</a></li>
					</g:else>
					<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
					<li><a href="#">Devices</a></li>
                </ul>    	   	
			</div>
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
            
            <div class="content_box">
            	<h2>Sign Up</h2>
				<div id="cp_contact_form">
                <g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${race}">
					<div class="errors">
					<g:renderErrors bean="${consumer}" as="list" />
					</div>
				</g:hasErrors>
				<g:form action="save" >
				<div class="dialog" align="center">
					<g:render template="form"/>
				</div>
					<g:submitButton name="create" class="save" class="submit_btn float_r" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</g:form>
				</div>
            
         
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