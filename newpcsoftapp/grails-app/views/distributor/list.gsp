<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="layout" content="main"/>
<g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
<title>PCMA</title>

</head>
<body>

<div id="templamteo_body_wrapper">
<div id="templatemo_wrapper">
	<div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    
    	<div id="templatemo_sidebar">
        	
            <div id="site_title"><h1><a href="/newpcsoftapp" rel="nofollow">Website Name</a><span><a href="#" target="_blank">Power Consumption Monitoring Software Application (PCMSA)</a></span></h1></div>
            
           <div id="templatemo_menu">
                 <ul>
                     <li><a href="${createLink(uri: '/')}">Home</a></li>
					<g:if test="${!session.username}">
						<li><a href="/newpcsoftapp/consumer/login" class="current">Login</a></li>
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/response/create">Create Response</a></li>
						<li><a href="/newpcsoftapp/response/list">Complaints Received</a></li>
					</g:else>
                </ul>    	   	
			</div>
            
            
            
			
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
        	
            <div class="content_box">
            	<h2>Welcome to Mirax Development</h2>
                <p>"The best part is that I know my exact energy footprint pattern and can control it. I know what is waste vs. necessity. I have completely eliminated expensive and unnecessary consumption." </br><em>-Chris Hunt, San Carlos CA</em></p>
             
            </div>
            
            
        </div> <!-- end of content -->
		
		
    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="templatemo_footer">
    
        Copyright &#169; 2014 <a href="/">Mirax Development - Power Consumption Monitoring Software Application</a>
        
    </div> <!-- end of templatemo_footer -->
</div> <!-- end of wrapper -->
</div>
<g:javascript src = "logging.js" />

</body>
</html>

