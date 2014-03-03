<%@ page import="newpcsoftapp.Consumer" %>



<div class="fieldcontain ${hasErrors(bean: consumerInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="consumer.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${consumerInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: consumerInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="consumer.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${consumerInstance?.password}"/>
</div>
<!--	
<div class="fieldcontain ${hasErrors(bean: consumerInstance, field: 'complaint', 'error')} ">
	<label for="complaint">
		<g:message code="consumer.complaint.label" default="Complaint" />
		
	</label>


<ul class="one-to-many">
<g:each in="${consumerInstance?.complaint?}" var="c">
    <li><g:link controller="complaint" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="complaint" action="create" params="['consumer.id': consumerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'complaint.label', default: 'Complaint')])}</g:link>
</li>
</ul>
-->
</div>

