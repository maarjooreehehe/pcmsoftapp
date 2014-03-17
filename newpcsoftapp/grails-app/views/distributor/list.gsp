
<%@ page import="newpcsoftapp.Distributor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-distributor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<g:if test="${!session.username}">
				<li><a class="logout" href="/newpcsoftapp/distributor/login">Login</a></li>
				</g:if>
				<g:else>
				<li><a class="logout" href="/newpcsoftapp/distributor/logout">Logout</a></li>
				</g:else>
			</ul>
		</div>
		<div id="list-distributor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'distributor.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'distributor.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${distributorInstanceList}" status="i" var="distributorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${distributorInstance.id}">${fieldValue(bean: distributorInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: distributorInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${distributorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
