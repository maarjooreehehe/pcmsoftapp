<html>
  <head>        
  <meta name="layout" content="graphs"/>
    <title>PCMA - Weekly Chart</title>         
	<g:javascript src = "FusionCharts/FusionCharts.js" />
 
  </head>   
  <body>
  

	<center>
    <div id="chartContainer">Weekly Chart</div>          
    <script type="text/javascript"><!--         

      var myChart = new FusionCharts( "${resource(dir: 'swf', file: 'MSLine.swf')}", 
		"myChartId", "500", "400", "0" );
      myChart.setXMLUrl("${resource(dir: 'OUTPUT', file: 'totalweeklydata.xml')}");
      myChart.render("chartContainer");
      
    // -->     
    </script>
	</center>
  </body> 
</html>

