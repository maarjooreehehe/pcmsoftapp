
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
				
			
			</ul>
		</div>
		<div id="show-consumer" class="content scaffold-show" role="main">
			<h1>Sent Items</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list consumer">
			
			
				<g:if test="${consumerInstance?.complaint}">
				<li class="fieldcontain">
					<span id="complaint-label" class="property-label"><g:message code="consumer.complaint.label" default="Complaint" /></span>
					
						<g:each in="${consumerInstance.complaint}" var="c">
						<span class="property-value" aria-labelledby="complaint-label"><g:link controller="complaint" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
				</li>
				</g:if>
			
			</ol>
		
		</div>
	</body>
</html>
