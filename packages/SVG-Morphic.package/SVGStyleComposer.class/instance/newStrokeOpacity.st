styling
newStrokeOpacity
	^ ((self svgStyle includesKey: 'opacity') or: [self svgStyle includesKey: 'stroke-opacity']) or: [self svgStyle includesKey: 'stroke'].