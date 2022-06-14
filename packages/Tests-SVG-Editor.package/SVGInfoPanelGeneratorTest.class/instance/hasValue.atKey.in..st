as yet unclassified
hasValue: aValue atKey: aKey in: anArrayOfLists

	|keys values|
	keys := anArrayOfLists first.
	values := anArrayOfLists second.
	
	self assert: (keys indexOf: aKey ifAbsent: [self fail]) = (values indexOf: aValue ifAbsent: [self fail]) description: 'The value could not be found at the given Key.'

	