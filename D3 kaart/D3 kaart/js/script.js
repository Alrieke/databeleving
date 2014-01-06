

$(document).ready(function(){
	
	var width = 1024,
		height = 819; // Hoogte en breedte van het SVG element dat hieronder aangemaakt wordt.

	var svg = d3.select('#container').append('svg') // div waar het geplaatst wordt.
		.attr('width', width)
		.attr('height', height); 

	var group = svg.append('g');

	var projection = d3.geo.mercator()			// Maak een platte kaart
						.scale(500)				// zorgt voor de zoom
			     		.translate([300, 950]);	// zorgt voor de plaating. ( eerst coordinaat naar rechts, 2e coordinaat naar beneden)

	
	group.selectAll() 				 
		 .data(geoJsonData.features) 
			.enter()				 // Per "Feature" json element (zie de JSON data); dit is als het ware een for-each loop
				.append('path')		 
									
					.attr('d', d3.geo.path().projection(projection))
					
				/*	.attr('id', function(id){
						console.log(id);
						return id;
					})*/
					.attr('title', function(land){    // voegt naam van het land toe
						return land.properties.name;
					})
					.attr('fill', function(land){
						return '#114956' ;
						//return land.fill;
					});
});