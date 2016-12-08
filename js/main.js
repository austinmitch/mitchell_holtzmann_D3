//javascript doc

//(function() {
	"use strict";
	console.log("SEAF FIRED");


//dataset via php ************************************************************
	var dataSet = [
		'dataBoxOffice.php',
		'dataCharKills.php',
		'dataDuelTime.php',
		'DataStormKills.php'
	];

//back/next buttons ************************************************************
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

//list-buttons functionality ************************************************************
	d3.select("#dataSet0").on("click", function(){ createChart(0); });
	d3.select("#dataSet1").on("click", function(){ createChart(1); });
	d3.select("#dataSet2").on("click", function(){ createChart(2); });
	d3.select("#dataSet3").on("click", function(){ createChart(3); });



//creates the chart ************************************************************
function createChart(z) {
		d3.json(dataSet[z], function(data) {
		console.log(data);
		var chart = d3.select("#pieChart");
		chart.selectAll("*").remove();
    var tooltip = d3.selectAll(".tooltip");
    tooltip.remove();
    var title = d3.select('#chartTitle');
    title.selectAll("*").remove();





//variables *************************************************************

        var donutWidth = 75;
        var width = 480;
        var height = 470;
        var radius = Math.min(width, height) / 2;
        var color = d3.scaleOrdinal()
        .range(["#00498C", "#00A79D", "#527892", "#3D4E80", "#00A4BB", "#212744"]);

        var legendCirc = 10;
        var legendSpacing = 15;




//making the chart ************************************************************

       var div = d3.select("body")
      .append("div")
      .attr("class", "tooltip")
      .style("opacity", 0);

        var svg = d3.select('#pieChart')
          .append('svg')
          .attr('width', '100%')
          .attr('height', '100%')
          .attr('viewBox','0 0 '+Math.min(width,height) +' '+Math.min(width,height) )

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
            return color(d.data.label)})
						.transition()
							.duration(1000)
							.attrTween('d', openTween);


//title functionality ************************************************************

          title.append('text')
          .data(pie(data))
          .text(function(d) { return d.data.setName; });




//tooltip functionality ************************************************************


         d3.selectAll('path')
        .on("mouseover", function(d){
          div.transition()
          .duration(200)
          .style("opacity", 1);
          div.html(d)
          .style("left", (d3.event.pageX-30)+"px")
          .style("top", (d3.event.pageY-30)+"px")
          .text(d.data.label+' '+d.data.tooltip);

          d3.select(this)//this = eement being hovered on
            .style("opacity", 1);

        })

        .on("mouseout", function(){
          div.transition()
            .duration(500)
            .style("opacity", 1);
        });



//making the legend ************************************************************

var legend = svg.selectAll('.legend')
          .data(color.domain())
          .enter()
          .append('g')
          .attr('class', 'legend')
          .attr('transform', function(d, i) {
            var height = legendCirc + legendSpacing;
            var offset =  height * color.domain().length / 2;
            var horz = -10.5 * legendCirc;
            var vert = i * height - offset;
            return 'translate(' + horz + ',' + vert + ')';
          });

        legend.append('circle')
          .attr("r", legendCirc)
          .style('fill', color)
          .style('stroke', color)
          ;

        legend.append('text')
          .attr('x', legendCirc + legendSpacing)
          .attr('y', legendCirc - legendSpacing + 10)
          .text(function(d) { return d; });

					function openTween(a) {
						var i = d3.interpolate({startAngle: 0, endAngle: 0},{startAngle: a.startAngle, endAngle: a.endAngle});
						return function(t) {
							return arc(i(t));
						};
					};



});


};
createChart(0);


 //})();
