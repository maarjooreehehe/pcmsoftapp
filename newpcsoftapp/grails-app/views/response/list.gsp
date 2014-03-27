<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'response.label', default: 'Response')}" />
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
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history">Charts History</a></li>
						<li><a href="/newpcsoftapp/response/list/${session.username}" class="current">Inbox</a></li>
					</g:else>
					<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
					<li><a href="#">Devices</a></li>
				</ul>
			</div>
			</div> <!-- end of sidebar -->
        <div id="templatemo_content">
            <div class="content_box">
            	<h2>Responses Received</h2>
                <table>
				<thead>
					<tr>
					
						<th><g:message code="response.complaint.label" default="Complaint" /></th>
										
						<g:sortableColumn property="body" title="${message(code: 'response.body.label', default: 'Body')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'response.dateCreated.label', default: 'Date Received')}" />
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${responseInstanceList}" status="i" var="responseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responseInstance.id}">${fieldValue(bean: responseInstance, field: "complaint")}</g:link></td>
					
						<td>${fieldValue(bean: responseInstance, field: "body")}</td>
					
						<td><g:formatDate format="MM-dd-yyyy" date="${responseInstance?.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
				
				
				
			
			</table>
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



