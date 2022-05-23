serializer
applyPolygonalAttributesOf: aPolygonalMorph on: anElement
	
	anElement
		attributeAt: 'points' put: (self generatePointString: aPolygonalMorph points)