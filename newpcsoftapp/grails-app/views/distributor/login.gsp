<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="layout" content="main" />
		<title>Log in</title>
	</head>

	<body>
		<div class="body">
		<div align="center">
			<h2>This page is restricted for system administrator only.</h2>
		</div>
			<br>
			<a class="btn" href="http://localhost:8080/newpcsoftapp/">Home</a>
			<br><br>
			<h3>Please log in</h3>
				<g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${race}">
					<div class="errors">
					<g:renderErrors bean="${distributor}" as="list" />
					</div>
				</g:hasErrors>
				<g:form controller="distributor" method="post" >
					<div class="dialog" align="center">
						<table>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center>	<label for='username'>Username:</label></center>
								</td>
								<td valign='top' class='value '>
									<input type="text" maxlength='13'
										name='username'
										value='${distributor?.username}'>
									</input>
								</td>
							</tr>
							<tr class='prop'>
								<td valign='top' class='name'>
								<center>	<label for='password'>Password:</label></center>
								</td>
								<td valign='top' class='value '>
									<input type="password" maxlength='8'
									name='password'
									value='${distributor?.password}'>
									</input>
								
								</td>
							</tr>
						</table>
					</div>
					<div class="buttons" align="center">
						<span class="button">
							<g:actionSubmit value="Log in" />
							
						</span>
					</div>
			</g:form>
			
			
			
			
</div>
</body>
</html>