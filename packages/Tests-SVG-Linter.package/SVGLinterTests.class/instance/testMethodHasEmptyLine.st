tests
testMethodHasEmptyLine
	"also rejects method with tabs or spaces in second line"

	self methodsLinesDo: [:lines |
		self assert: (lines size < 2
			or: [self isLineWithOnlyTabsAndSpaces: lines second]
			or: [(self isLineWithCommentOnly: lines second)
				and: [lines size < 4 or: [self isLineWithOnlyTabsAndSpaces: lines third]]])]