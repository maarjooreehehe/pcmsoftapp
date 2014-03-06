<%@ page import="newpcsoftapp.Consumer" %>

<div class="dialog" align="center">
						<table>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center>	<label for='username'>Username:</label></center>
								</td>
								<td valign='top' class='value '>
									<input type="text" maxlength='8'
										name='username'
										value='${consumer?.username}'
										class="required input_field"
										>
									</input>
								</td>
							</tr>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center>	<label for='password'>Password:</label></center>
								</td></br>
								<td valign='top' class='value '>
									<input type="password" maxlength='8'
									name='password'
									value='${consumer?.password}'
									class="required input_field"
									>
									</input>
								
								</td>
							</tr>
						</table>
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


