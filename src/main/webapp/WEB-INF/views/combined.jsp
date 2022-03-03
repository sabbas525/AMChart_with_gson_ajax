<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#piediv{
width:100%;
height:400px;}
#chartdiv{
width:100%;
height:400px;}
</style>
<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>

<!-- Resources -->

<!-- Chart code -->



<div  id="firstdive">
<div id="firstloader" class="spinner-border" role="status">
  <span class="sr-only">Loading...</span>
</div>
</div>
<div  id="seconddive">
<div id="secondloader" class="spinner-border" role="status">
  <span class="sr-only">Loading...</span>
</div></div>
<script>
setTimeout(
  function() 
  {
  	getPieChart();
  }, 5000);
  setTimeout(
  function() 
  {
  	getColChart();
  }, 10000);
function getPieChart(){
$.ajax({
  url: "/pie/pieChart"
}).done(function(response) {
 $("#firstdive").html(response);
 });
}
function getColChart(){
$.ajax({
  url: "/pie/colChart"
  
}).done(function(response) {
 $("#seconddive").html(response);
 });
}

</script>
</body>
</html>