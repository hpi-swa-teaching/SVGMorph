defaultFont
testDefaultFont

	|defaultSVGFont|
	defaultSVGFont := SVGStyleComposer new defaultFont.

	self assert: defaultSVGFont isTTCFont.
	self assert: self defaultFont equals: defaultSVGFont familyName