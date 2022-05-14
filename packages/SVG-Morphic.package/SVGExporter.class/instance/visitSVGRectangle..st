as yet unclassified
visitSVGRectangle: aRectangle
	
	|element|
	element := XMLElement new.
	
	^ element
		name: 'rect';
		attributeAt: 'x' put: aRectangle rectangle origin x asString;
		attributeAt: 'y' put: aRectangle rectangle origin y asString;
		attributeAt: 'width' put: aRectangle rectangle width asString;
		attributeAt: 'height' put: aRectangle rectangle height asString;
		attributeAt: 'stroke' put: ((aRectangle style at: 'stroke') asCSS2String);
		attributeAt: 'stroke-width' put: ((aRectangle style at: 'stroke-width') asString);
		attributeAt: 'fill' put: ((aRectangle style at: 'fill') asCSS2String);
		yourself.
		
	