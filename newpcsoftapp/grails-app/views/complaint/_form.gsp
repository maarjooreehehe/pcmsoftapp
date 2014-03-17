<%@ page import="newpcsoftapp.Complaint" %>



<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="complaint.subject.label" default="Subject" />
		
	</label>
	<input name="subject" value="${complaintInstance?.subject}" class="input_field" id="subject" maxlength="60"/>
</div>

<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'messageType', 'error')} ">
	<label for="messageType">
		<g:message code="complaint.messageType.label" default="Message Type" />
		
	</label>
	<input name="messageType" value="${complaintInstance?.messageType}" class="input_field" id="messageType" maxlength="60"/>
</div>

<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="complaint.body.label" default="Body" />
		
	</label>
	<textarea name="body" value="${complaintInstance?.body}" rows="0" cols="0" class="required" > </textarea>
</div>


