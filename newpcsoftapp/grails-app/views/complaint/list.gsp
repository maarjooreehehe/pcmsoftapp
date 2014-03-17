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
						<li><a href="/newpcsoftapp/consumer/login" class="current">Login</a></li>
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/distributor/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/response/create">Create Response</a></li>
						<li><a href="/newpcsoftapp/complaint/list">Complaints Received</a></li>
					</g:else>
				</ul>
			</div>
			</div> <!-- end of sidebar -->
        <div id="templatemo_content">
            <div class="content_box">
            	<h2>Complaints Received</h2>
                <table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'complaint.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'complaint.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="messageType" title="${message(code: 'complaint.messageType.label', default: 'Message Type')}" />
					
						<g:sortableColumn property="body" title="${message(code: 'complaint.body.label', default: 'Body')}" />
					
						<th><g:message code="complaint.owner.label" default="Owner" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${complaintInstanceList}" status="i" var="complaintInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${complaintInstance.id}">${fieldValue(bean: complaintInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: complaintInstance, field: "subject")}</td>
					
						<td>${fieldValue(bean: complaintInstance, field: "messageType")}</td>
					
						<td>${fieldValue(bean: complaintInstance, field: "body")}</td>
					
						<td>${fieldValue(bean: complaintInstance, field: "owner")}</td>
					
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



<%--
	<body>
		<a href="#list-complaint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-complaint" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="pagination">
				<g:paginate total="${complaintInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
--%>

