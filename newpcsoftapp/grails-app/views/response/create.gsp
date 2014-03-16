<%@ page import="newpcsoftapp.Consumer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="layout" content="main">
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
           
			<div id="cp_contact_form">
				</br>
				<h2>Create Response</h2>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${responseInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${responseInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<div class="dialog" align="left">
					<g:render template="form"/>
				</div>
				
					<g:submitButton name="create" class="save" class="submit_btn float_l" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				
			</g:form>
		</div>
		
				
				
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



<%--
	<body>
		<a href="#create-response" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-response" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${responseInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${responseInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
--%>
