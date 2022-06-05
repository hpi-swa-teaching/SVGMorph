serializer
applyTransformOf: aMorph on: anXMLElement

	| transform description temp |
	transform := aMorph transform.
	transform isIdentity
		ifTrue: [^self].
	description := OrderedCollection new.
	temp := transform compositeTranslation.
	(temp closeTo: 0 @ 0)
		ifFalse: [description add: ('translate({1},{2})' format: { self printNum: temp x . self printNum: temp y })].
	temp := transform compositeRotation.
	(temp closeTo: 0)
		ifFalse: [description add: ('rotate({1})' format: { self printNum: temp })].
	temp := transform compositeScale.
	(temp closeTo: 1 @ 1)
		ifFalse: [description add: ('scale({1},{2})' format: { self printNum: temp x . self printNum:  temp y })].
	temp := transform compositeSkew.
	(temp closeTo: 0)
		ifFalse: [description add: ('skewY({1})' format: { self printNum: temp })].
	
	anXMLElement attributeAt: 'transform' put: (description joinSeparatedBy: ',')