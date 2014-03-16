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
			<div id="site_title">
				<h1>
				<a href="/newpcsoftapp" rel="nofollow">Website Name</a>
				<span>
					<a href="#" target="_blank">Power Consumption Monitoring Software Application (PCMSA)</a>
				</span></h1>
			</div>
			<div id="templatemo_menu">
				<ul>
					<li><a href="${createLink(uri: '/')}" class="current">Home</a></li>
					<g:if test="${!session.username}">
						<li><a class="logout" href="/newpcsoftapp/consumer/login">Login</a></li>
					</g:if>
					<g:else>
						<li><a class="logout" href="/newpcsoftapp/consumer/logout">Logout | ${session.username}</a></li>
						<li><a href="/newpcsoftapp/charts/index">Monitoring Portal</a></li>
						<li><a href="/newpcsoftapp/charts/history">Charts History</a></li>
						<li><a href="/newpcsoftapp/complaint/create">Contact Us</a></li>
						<li><a href="#">Inbox</a></li>
					</g:else>
					<li><a href="#">Devices</a></li>
				</ul>
			</div>
		</div> <!-- end of sidebar -->
        <div id="templatemo_content">
            <div id="slider">
            	<img src="images/slideshow/ILPIHotlines.jpg" alt="Image 5" title="We are just one call away! We are so dear to serve you. :)" />
				<img src="images/slideshow/PayOnline.jpg" alt="Image 1" title="Pay your bills online. It is fast and easy!" />
                <img src="images/slideshow/ElectricSafety Tips.jpg" alt="Image 2" title="Tip: Avoid flying kites near electric transmission and distribution lines." />
                <img src="images/slideshow/RA7832.jpg" alt="Image 3" title="Do not steal electricity. Be a responsible citizen!" />
                <img src="images/slideshow/OfficeHours.jpg" alt="Image 4" title="Inquire to us now. We are so excited to serve you. :)" />
        	</div>
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