accessing
svgTree

	self svg ifNotNil: [^ Array with: self svg].
	^ Array new