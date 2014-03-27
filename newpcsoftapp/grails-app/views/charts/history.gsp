<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="layout" content="main"/>
<title>PCMA</title>

</head>
<body>

<div id="templamteo_body_wrapper">
<div id="templatemo_wrapper">
	<div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    
    	<div id="templatemo_sidebar">
        	
            <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Website Name</a><span><a target="_blank">Power Consumption Monitoring Software Application (PCMSA)</a></span></h1></div>
            
            <div id="templatemo_menu">
                 <ul>
                    <li><a href="${createLink(uri: '/')}">Home</a></li>
					<g:if test="${!session.username}">
						<li><a href="/newpcsoftapp/consumer/login">Login</a></li>
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history" class="current">Charts History</a></li>
						<li><a href="/newpcsoftapp/response/list/${session.username}">Inbox</a></li>
					</g:else>
					<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
					<li><a href="#">Devices</a></li>
                </ul>    	   	
			</div>
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
            
            <div class="content_box">
            	  <div id="gallery">
                    <ul>
                        <li>
							<a class="lightbox" title="Weekly Chart">
                            <img src="${resource(dir: 'images/history', file: 'weeklychart.PNG')}" alt="Image 1" />
							</a>
                            <span>Weekly Chart</span>
                            This chart represents the visual graphical history of current usage in weekly basis.
                            <a href="/newpcsoftapp/charts/weeklychart">View more..</a>
                        
                        </li>
                        <li>
							<a class="lightbox" title="Monthly Chart">
                            <img src="${resource(dir: 'images/history', file: 'monthlychart.PNG')}" alt="Image 1" />
							</a>
                            <span>Monthly Chart</span>
                            This chart represents the visual graphical history of current usage in monthly basis..
                            <a href="/newpcsoftapp/charts/monthlychart">View more...</a>
                        
                        </li>
						<li>
							<a class="lightbox" title="Annual Chart">
                            <img src="${resource(dir: 'images/history', file: 'annualchart.PNG')}" alt="Image 1" />
							</a>
                            <span>Annual Chart</span>
                            This chart represents the visual graphical history of current usage in yearly basis..
                            <a href="/newpcsoftapp/charts/annualchart">View more...</a>
                        
                        </li>
                        
                    </ul>  
                </div><!-- end of gallery -->
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