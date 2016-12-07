//javascript doc

//(function() {
	"use strict";
	console.log("SEAF FIRED");

	var dataSet = [
		'dataBoxOffice.php',
		'dataCharKills.php',
		'dataDuelTime.php',
		'DataStormKills.php'
	];

//buttons to change the chart
	var z = 0;

	d3.select("#next").on("click", function(){
		var length = dataSet.length;
		if(z < length-1) { z++; }else{ z = 0; }
		console.log(z);
		createChart(z);
	});

	d3.select("#back").on("click", function(){
		var length = dataSet.length;
		if(z > 0) { z--; }else{ z = 3; }
		console.log(z);
		createChart(z);
	});

	//list buttons functionality
	d3.select("#dataSet0").on("click", function(){ createChart(0); });
	d3.select("#dataSet1").on("click", function(){ createChart(1); });
	d3.select("#dataSet2").on("click", function(){ createChart(2); });
	d3.select("#dataSet3").on("click", function(){ createChart(3); });



//function that creates the chart
function createChart(z) {
		d3.json(dataSet[z], function(data) {
		console.log(data);
		var chart = d3.select("#pieChart");
		chart.selectAll("*").remove();


//variables *************************************************************
        var donutWidth = 75;
        var width = 480;
        var height = 500;
        var radius = Math.min(width, height) / 2;
        var color = d3.scaleOrdinal()
        .range(["#00498C", "#00A79D", "#527892", "#3D4E80", "#00A4BB", "#212744"]);

        var legendRectSize = 20;
        var legendSpacing = 5;






//making the chart ************************************************************




        var svg = d3.select('#pieChart')
          .append('svg')
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width / 2) +
            ',' + (height / 2) + ')');




        var arc = d3.arc()
          .innerRadius(radius - donutWidth)
          .outerRadius(radius);

        var pie = d3.pie()
          .value(function(d) { return d.value; })
          .sort(null);

        var path = svg.selectAll('path')
            .data(pie(data))
            .enter()
            .append('path')
            .attr('d', arc)
            .attr('fill', function(d, i) {
            return color(d.data.label)});





//legend related *************************************************************
var legend = svg.selectAll('.legend')
          .data(color.domain())
          .enter()
          .append('g')
          .attr('class', 'legend')
          .attr('transform', function(d, i) {
            var height = legendRectSize + legendSpacing;
            var offset =  height * color.domain().length / 2;
            var horz = -5.5 * legendRectSize;
            var vert = i * height - offset;
            return 'translate(' + horz + ',' + vert + ')';
          });

        legend.append('rect')
          .attr('width', legendRectSize)
          .attr('height', legendRectSize)
          .style('fill', color)
          .style('stroke', color);

        legend.append('text')
          .attr('x', legendRectSize + legendSpacing)
          .attr('y', legendRectSize - legendSpacing)
          .text(function(d) { return d; });



});

};
createChart(0);


 //})();
