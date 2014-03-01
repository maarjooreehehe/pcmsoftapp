<%@ page import="newpcsoftapp.Response" %>



<div class="fieldcontain ${hasErrors(bean: responseInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="response.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${responseInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responseInstance, field: 'complaint', 'error')} required">
	<label for="complaint">
		<g:message code="response.complaint.label" default="Complaint" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="complaint" name="complaint.id" from="${newpcsoftapp.Complaint.list()}" optionKey="id" required="" value="${responseInstance?.complaint?.id}" class="many-to-one"/>
</div>

