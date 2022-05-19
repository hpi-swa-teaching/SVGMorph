as yet unclassified
visitSVGRectangle: aRectangle
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: aRectangle on: element.
	
	^ element
		name: 'rect';
		attributeAt: 'x' put: aRectangle bounds origin x asString;
		attributeAt: 'y' put: aRectangle bounds origin y asString;
		attributeAt: 'width' put: aRectangle bounds width asString;
		attributeAt: 'height' put: aRectangle bounds height asString;
		yourself