as yet unclassified
visitSVGMorph: aMorph
	
	self applyCommonAttributesFrom: aMorph on: self document.

	self document 
		name: 'svg';
		attributeAt: 'version' put: '1.1';
		attributeAt: 'xmlns' put: 'http://www.w3.org/2000/svg';
		attributeAt: 'width' put: aMorph extent x asString;
		attributeAt: 'height' put: aMorph extent y asString.

	aMorph submorphs reversed do: [:morph | 
		self document addElement: (morph accept: self)]