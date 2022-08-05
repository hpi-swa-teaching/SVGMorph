visiting
visitSVGPolyline: aPolyline

	^ (self visitSVGPolygonal: aPolyline)
		name: 'polyline'