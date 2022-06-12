tests
testSpaceAfterReturnCharacter

	"Checks that the ^ Character for return statements is followed by a space"
	self methodsLinesDo: [:lines |
		lines do: [:line |
			self assert: ((line includes: $^) ==> [('\^[^ ]' asRegex search: line) not])]]