tests
testSpaceAfterReturnCharacter
	"Checks that the ^ Character for return statements is followed by a space. Has to be ignored since it contains the ^ caracter in the regex without a space" "@linter-ignore"

	self methodsLinesDo: [:lines |
		lines do: [:line |
			self assert: ((line includes: $^) ==> [('\^[^ ]' asRegex search: line) not])]]