visiting
visitSVGEllipse: anEllipse

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: anEllipse on: element;
		applyEllipseAttributesOf: anEllipse on: element.

	^ element