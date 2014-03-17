
<%@ page import="newpcsoftapp.Consumer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'consumer.label', default: 'Consumer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-consumer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link controller="complaint" action="create" params="['consumer.id': consumerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'complaint.label', default: 'Complaint')])}</g:link></li>

			
			</ul>
		</div>
		<div id="show-consumer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list consumer">
			
				<g:if test="${consumerInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="consumer.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${consumerInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${consumerInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="consumer.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${consumerInstance}" field="password"/></span>
					
				</li>
				</g:if>
			<!--
				<g:if test="${consumerInstance?.complaint}">
				<li class="fieldcontain">
					<span id="complaint-label" class="property-label"><g:message code="consumer.complaint.label" default="Complaint" /></span>
					
						<g:each in="${consumerInstance.complaint}" var="c">
						<span class="property-value" aria-labelledby="complaint-label"><g:link controller="complaint" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
				</li>
				</g:if>
			-->
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${consumerInstance?.id}" />
					<g:link class="edit" action="edit" id="${consumerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:link action="inbox" id="${consumerInstance?.id}" controller="consumer">Inbox</g:link>
					<g:link action="sent" id="${consumerInstance?.id}" controller="consumer">Sent</g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
