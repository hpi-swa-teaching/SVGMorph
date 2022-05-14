as yet unclassified
visitSVGRectangle: aRectangle
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: aRectangle on: element.
	
	^ element
		name: 'rect';
		attributeAt: 'x' put: aRectangle rectangle origin x asString;
		attributeAt: 'y' put: aRectangle rectangle origin y asString;
		attributeAt: 'width' put: aRectangle rectangle width asString;
		attributeAt: 'height' put: aRectangle rectangle height asString;
		yourself.
		
	