<?xml version="1.0" encoding="iso-8859-1"?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="layout" content="main"/>
<title>PCMA</title>

<g:javascript src = "Charts/FusionCharts.js" />
<g:javascript src = "Charts/jquery.min.js" />
<g:javascript src = "Charts/prettify.js" />
<g:javascript src = "Charts/json2.js" />
<g:javascript src = "Charts/lib.js" />
<g:javascript src = "Charts/date.js" />

<script type="text/javascript">
	var isJSChartNotAvailable = false;
</script>

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
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">${session.username} | Logout</a></li>
						<li><a href="/newpcsoftapp/charts/index" class="current">Monitoring Portal</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Inbox</a></li>
					</g:else>
                    <li><a href="#">Devices</a></li>
                </ul>

			</div>
            
            <div class="sb_box">
	            <h3>Search</h3>
            	<div id="search">
                    <form action="#" method="get">
                        <input type="text" value="Search" name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="submit" name="Search" value="Search" id="searchbutton" title="Search" />
                    </form>
				</div>
            </div>
            
			
            
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->
        
        <div id="templatemo_content">
            
            <div class="content_box">
            	<h2>Real-time Monitoring of Power Consumption</h2>
                <div class="cleaner"></div>				
				
				<g:javascript src = "Charts/RTLineDY.js" />        
        
		<div id="chartdiv" align="center">Chart will load here</div>
        
		
		<script type="text/javascript">
			if ((typeof isJSChartNotAvailable=="undefined" || !isJSChartNotAvailable==true) && (GALLERY_RENDERER && GALLERY_RENDERER.search(/javascript|flash/i)==0) )  FusionCharts.setCurrentRenderer(GALLERY_RENDERER); 
			
            var chart = new FusionCharts("${resource(dir: 'swf', file: 'RealTimeLineDY.swf')}", "ChartId", "550", "390", "0", "1" );
            chart.setXMLData( dataString );
            
			
			chart.render("chartdiv");
		
			window.dataUpdateTimer = null;
			
			FusionCharts.addEventListener("Rendered", function(e,a) {
				if(e.sender.id=="tmpChartId") return;
			
				window.dataUpdateTimer = window.setInterval (function (){ 
					provideRealTimeDataThroughJSAPI(e.sender);
				},3000 );
			});			
				
			function provideRealTimeDataThroughJSAPI(sender)
			{
				var updater= sender.feedData? sender : null;
				
				var p = (Math.random()*6)+30;
				var v = (Math.random()*800)+58200;
				var s = (Math.random()*50)+23;
				var dateTimeLabel = new Date().toString("HH:mm:ss");
				if(updater) updater.feedData("&label=" + dateTimeLabel + "&value=" + p + "|" + v + "|" + s);
			}
			
        </script>
         
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