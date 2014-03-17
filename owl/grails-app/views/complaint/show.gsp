
<%@ page import="newpcsoftapp.Complaint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'complaint.label', default: 'Complaint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-complaint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-complaint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list complaint">
			
				<g:if test="${complaintInstance?.consumer}">
				<li class="fieldcontain">
					<span id="consumer-label" class="property-label"><g:message code="complaint.consumer.label" default="Consumer" /></span>
					
						<span class="property-value" aria-labelledby="consumer-label"><g:link controller="consumer" action="show" id="${complaintInstance?.consumer?.id}">${complaintInstance?.consumer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${complaintInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="complaint.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${complaintInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${complaintInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="complaint.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${complaintInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${complaintInstance?.messageType}">
				<li class="fieldcontain">
					<span id="messageType-label" class="property-label"><g:message code="complaint.messageType.label" default="Message Type" /></span>
					
						<span class="property-value" aria-labelledby="messageType-label"><g:fieldValue bean="${complaintInstance}" field="messageType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${complaintInstance?.body}">
				<li class="fieldcontain">
					<span id="body-label" class="property-label"><g:message code="complaint.body.label" default="Body" /></span>
					
						<span class="property-value" aria-labelledby="body-label"><g:fieldValue bean="${complaintInstance}" field="body"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${complaintInstance?.id}" />
					<g:link class="edit" action="edit" id="${complaintInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:link class="edit" action="create" id="${complaintInstance?.id}" controller="response">Reply</g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
