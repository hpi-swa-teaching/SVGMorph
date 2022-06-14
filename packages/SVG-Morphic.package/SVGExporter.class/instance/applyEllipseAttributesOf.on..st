serializer
applyEllipseAttributesOf: anEllipse on: anElement
	
	anElement
		name: 'ellipse';
		attributeAt: 'cx' put: anEllipse rectangle center x asString;
		attributeAt: 'cy' put: anEllipse rectangle center y asString;
		attributeAt: 'rx' put: (anEllipse rectangle width / 2)  asString;
		attributeAt: 'ry' put: (anEllipse rectangle height / 2) asString