
<%@ page import="newpcsoftapp.Response" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'response.label', default: 'Response')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-response" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-response" class="content scaffold-list" role="main">
			<h1>Inbox</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th>Subject</th>
					
						<g:sortableColumn property="body" title="${message(code: 'response.body.label', default: 'Body')}" />
					
						<th><g:message code="response.complaint.label" default="Complaint" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responseInstanceList}" status="i" var="responseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responseInstance.id}" controller="response">${responseInstance.complaint.subject} response</g:link></td>
					
						<td>${fieldValue(bean: responseInstance, field: "body")}</td>
					
						<td>${fieldValue(bean: responseInstance, field: "complaint")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
		</div>
	</body>
</html>
