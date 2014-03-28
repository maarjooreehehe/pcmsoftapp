<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="layout" content="main"/>
<title>PCMA</title>

<g:javascript src = "Charts/FusionCharts.js" />


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
						<li><a class="logout" href="/newpcsoftapp/consumer/login">Login</a></li>
						<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
						<li><a href="#">Devices</a></li>
					</g:if>
					<g:elseif test="${session.username=='distrib'}">
						<li><a class="logout" href="/newpcsoftapp/distributor/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/response/create">Create Response</a></li>
						<li><a href="/newpcsoftapp/complaint/list" class="current">Complaints Received</a></li>
					</g:elseif>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history" class="current">Charts History</a></li>
						<li><a href="/newpcsoftapp/response/list/${session.username}">Inbox</a></li>
						<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
						<li><a href="#">Devices</a></li>
					</g:else>
                </ul>  	
			</div>
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
            
            <div class="content_box">
            	<h2>Monthly Chart</h2>
				<center>
					<div id="chartContainer">Monthly Chart</div>          
					<script type="text/javascript"><!--         

					var myChart = new FusionCharts( "${resource(dir: 'swf', file: 'Column3D.swf')}", 
					"myChartId", "500", "400", "0" );
					myChart.setXMLUrl("${resource(dir: 'OUTPUT', file: 'totalmonthlydata.xml')}");
					myChart.render("chartContainer");
      
					// -->     
					</script>
				</center>
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