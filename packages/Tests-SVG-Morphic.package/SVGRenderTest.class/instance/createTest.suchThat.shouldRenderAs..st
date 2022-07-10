helpers
createTest: aString suchThat: anotherString shouldRenderAs: aForm

	self
		saveSVGString: anotherString as: (aString, 'SVG');
		saveForm: aForm as: (aString, 'PNG');
		saveTestFor: aString withErrorRate: 1e-5