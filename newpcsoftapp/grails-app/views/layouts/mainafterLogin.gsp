<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${resource(dir: 'css', file: 'templatemo_style.css')}" rel="stylesheet" type="text/css" />
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'pcma_logo.png')}" type="image/x-icon">
		<script language="javascript" type="text/javascript">
			function clearText(field)
				{
					if (field.defaultValue == field.value) field.value = '';
					else if (field.value == '') field.value = field.defaultValue;
				}
		</script>
		<link href="${resource(dir: 'css', file: 'nivo-slider.css')}" rel="stylesheet" type="text/css" />
		<g:javascript src = "jquery.min.js" />
		<g:javascript src = "jquery.nivo.slider.js" />
		
		<script type="text/javascript">
		$(window).load(function() {
		$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:700,
		pauseTime:2500,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, 
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.6, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
			});
		});
		</script>


		
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>

		<g:layoutBody/>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<li><a href="/newpcsoftapp/consumer/logout">Logout</a></li>
		<r:layoutResources />
	</body>
</html>
