private
isLineWithCommentOnly: aString

	|trimmedLine|
	trimmedLine := aString withBlanksTrimmed.
	^ trimmedLine first = $" and: [trimmedLine last = $"]