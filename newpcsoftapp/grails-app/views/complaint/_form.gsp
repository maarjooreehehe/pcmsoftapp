<%@ page import="newpcsoftapp.Complaint" %>



<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="complaint.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" value="${complaintInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'messageType', 'error')} ">
	<label for="messageType">
		<g:message code="complaint.messageType.label" default="Message Type" />
		
	</label>
	<g:textField name="messageType" value="${complaintInstance?.messageType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="complaint.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${complaintInstance?.body}"/>
</div>


