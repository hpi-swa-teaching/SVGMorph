as yet unclassified
visitSVGGroup: aGroup

	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: aGroup on: element.
	
	aGroup submorphs reversed do: [:morph | 
		element addElement: (morph accept: self)].
	
	^ element
		name: 'g';
		yourself