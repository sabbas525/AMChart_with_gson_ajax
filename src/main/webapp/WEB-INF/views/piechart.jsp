<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Pie Chart</title>
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}
</style>

<!-- Resources -->
<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>

<!-- Chart code -->
<script>
am5.ready(function() {

// Create root element
// https://www.amcharts.com/docs/v5/getting-started/#Root_element
let root1 = am5.Root.new("piediv");

// Set themes
// https://www.amcharts.com/docs/v5/concepts/themes/
root1.setThemes([
  am5themes_Animated.new(root1)
]);

// Create chart
// https://www.amcharts.com/docs/v5/charts/percent-charts/pie-chart/
let chart1 = root1.container.children.push(
  am5percent.PieChart.new(root1, {
    endAngle: 270
  })
);

// Create series
// https://www.amcharts.com/docs/v5/charts/percent-charts/pie-chart/#Series
let series1 = chart1.series.push(
  am5percent.PieSeries.new(root1, {
    valueField: "value",
    categoryField: "category",
    endAngle: 270
  })
);

series1.states.create("hidden", {
  endAngle: -90
});

// Set data
// https://www.amcharts.com/docs/v5/charts/percent-charts/pie-chart/#Setting_data
var data1 = ${pieData};
series1.data.setAll(data1);

series1.appear(1000, 100);

}); // end am5.ready()
</script>
</head>
<body>


<!-- HTML -->
<div style="width:100%;height:400px" id="piediv"></div>
</body>
</html>