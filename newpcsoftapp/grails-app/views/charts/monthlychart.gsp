<html>
  <head>        
  <meta name="layout" content="graphs"/>
    <title>PCMA - Monthly Chart</title>         
<g:javascript src = "FusionCharts/FusionCharts.js" />
 
  </head>   
  
  
  <body>    
  
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
  </body> 
</html>