<%@ page import="newpcsoftapp.Distributor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		
		<meta name="layout" content="main" />
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
						<li><a href="/newpcsoftapp/response/create">Create Response</a></li>
						<li><a href="#">Complaints Received</a></li>
					</g:else>
					
                </ul>    	   	
			</div>
            
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
            
            <div class="content_box">
            	<h2>Strictly for Distributor Login only.</h2>
				<div id="cp_contact_form">
				<g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${race}">
					<div class="errors">
					<g:renderErrors bean="${distributor}" as="list" />
					</div>
				</g:hasErrors>
				<g:form controller="distributor" method="post" >
					<div class="dialog" align="center">
						<table>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center>	<label for='username'>Username:</label></center>
								</td>
								<td valign='top' class='value '>
									<input type="text" maxlength='8'
										name='username'
										value='${distributor?.username}'
										class="required input_field">
									</input>
								</td>
							</tr>
				            <tr class='prop'>
								<td valign='top' class='name'>
								<center>	<label for='password'>Password:</label></center>
								</td><br>
								<td valign='top' class='value '>
									<input type="password" maxlength='8'
									name='password'
									value='${distributor?.password}'
									class="required input_field">
									</input>
								
								</td>
							</tr>
						</table>
					</div>
					<div class="buttons" align="center">
						<span class="button">
							<g:actionSubmit class="submit_btn float_r" id="submit" value="Log in" />
						</span>
					</div>
			</g:form>
            </div>
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


