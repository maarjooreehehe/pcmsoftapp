<html>
  <head>        
    <title>My First chart using FusionCharts XT</title>         
<g:javascript src = "FusionCharts/FusionCharts.js" />
 
  </head>   
  <body>     
    <div id="chartContainer">FusionCharts XT will load here!</div>          
    <script type="text/javascript"><!--         

      var myChart = new FusionCharts( "${resource(dir: 'swf', file: 'Pie3D.swf')}", 
		"myChartId", "400", "300", "0" );
      myChart.setXMLUrl("${resource(dir: 'OUTPUT', file: 'piechartdata.xml')}");
      myChart.render("chartContainer");
      
    // -->     
    </script>      
  </body> 
</html>

