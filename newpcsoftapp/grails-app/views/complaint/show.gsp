<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'complaint.label', default: 'Complaint')}" />
	<title>PCMA</title>
</head>
<body>
	<div id="templamteo_body_wrapper">
	<div id="templatemo_wrapper">
	<div id="templatemo_main_top"></div>
    <div id="templatemo_main">
		<div id="templatemo_sidebar">
			<div id="site_title">
				<h1>
				<a href="/newpcsoftapp" rel="nofollow">Website Name</a>
				<span>
					<a href="#" target="_blank">Power Consumption Monitoring Software Application (PCMSA)</a>
				</span></h1>
			</div>
			<div id="templatemo_menu">
				<ul>
					<li><a href="${createLink(uri: '/')}">Home</a></li>
					<g:if test="${!session.username}">
						<li><a class="logout" href="/newpcsoftapp/consumer/login">Login</a></li>
						<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
						<li><a href="#">Devices</a></li>
					</g:if>
					<g:elseif test="${session.username=='distrib'}">
						<li><a class="logout" href="/newpcsoftapp/distributor/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/response/create">Create Response</a></li>
						<li><a href="/newpcsoftapp/complaint/list" class="current">Complaints Received</a></li>
					</g:elseif>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history">Charts History</a></li>
						<li><a href="/newpcsoftapp/response/list/${session.username}">Inbox</a></li>
						<li><a href="/newpcsoftapp/complaint/create" class="current">Contact Us</a></li>
						<li><a href="#">Devices</a></li>
					</g:else>
                </ul>
			</div>
			</div> <!-- end of sidebar -->
        <div id="templatemo_content">
            <div id="show-complaint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
		<table>
		<td>
			<b>Owner:</b>		<g:fieldValue bean="${complaintInstance}" field="owner"/><br>
			<b>Subject:</b>		<g:fieldValue bean="${complaintInstance}" field="subject"/><br>
			<b>Type of Message:</b>		<g:fieldValue bean="${complaintInstance}" field="messageType"/><br>
			<b>Body:</b>		<g:fieldValue bean="${complaintInstance}" field="body"/><br>
			<b>Date Created:</b>		<g:formatDate format="MM-dd-yyyy" date="${complaintInstance?.dateCreated}" /><br>	
		</td>
		</table>
		

			
		<br>
		<g:form>
			<fieldset style="border:none">
				<g:hiddenField name="id" value="${complaintInstance?.id}" />
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
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
