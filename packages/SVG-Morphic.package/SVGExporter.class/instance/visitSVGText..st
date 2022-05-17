as yet unclassified
visitSVGText: aText
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: aText on: element.
	
	^ element
		name: 'text';
		attributeAt: 'x' put: aText location x asString;
		attributeAt: 'y' put: aText location y asString;
		addElement: (XMLStringNode string: aText text);
		yourself