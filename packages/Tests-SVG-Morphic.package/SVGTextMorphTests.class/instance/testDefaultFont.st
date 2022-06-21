defaultFont
testDefaultFont

	self assert: TextStyle defaultSVGFont isTTCFont.
	self assert: self defaultFont equals: TextStyle defaultSVGFont familyName