as yet unclassified
visitSVGEllipse: anEllipse
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: anEllipse on: element.
	
	^ element
		name: 'ellipse';
		attributeAt: 'cx' put: anEllipse bounds center x asString;
		attributeAt: 'cy' put: anEllipse bounds center y asString;
		attributeAt: 'rx' put: (anEllipse bounds width / 2)  asString;
		attributeAt: 'ry' put: (anEllipse bounds height / 2) asString;
		yourself