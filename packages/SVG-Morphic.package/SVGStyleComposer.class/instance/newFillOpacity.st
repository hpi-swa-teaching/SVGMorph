styling
newFillOpacity

	^ (self svgStyle includesKey: 'opacity') or: [(self svgStyle includesKey: 'fill-opacity') or: [self svgStyle includesKey: 'fill']]