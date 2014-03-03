<%@ page import="newpcsoftapp.Distributor" %>



<div class="fieldcontain ${hasErrors(bean: distributorInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="distributor.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${distributorInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: distributorInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="distributor.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${distributorInstance?.password}"/>
</div>

