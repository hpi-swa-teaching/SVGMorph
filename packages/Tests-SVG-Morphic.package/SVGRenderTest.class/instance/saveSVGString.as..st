helpers
saveSVGString: aString as: anotherString

	self class compile: anotherString , '

	^ SVGMorph fromString: ''', aString , ''''.

	self class organization
		classify: anotherString asSymbol
		under: #'test cases'
		logged: false