serializer
applyTransformOf: aMorph on: anXMLElement

	| transform description temp |
	transform := aMorph transform.
	transform isIdentity
		ifTrue: [^self].
	description := OrderedCollection new.
	temp := transform compositeTranslation roundTo: self precision.
	(temp closeTo: 0 @ 0)
		ifFalse: [description add: ('translate({1},{2})' format: {temp x . temp y})].
	temp := transform compositeRotation roundTo: self precision.
	(temp closeTo: 0)
		ifFalse: [description add: ('rotate({1})' format: {temp})].
	temp := transform compositeScale roundTo: self precision.
	(temp closeTo: 1 @ 1)
		ifFalse: [description add: ('scale({1},{2})' format: {temp x . temp y})].
	temp := transform compositeSkew roundTo: self precision.
	(temp closeTo: 0)
		ifFalse: [description add: ('skewX({1})' format: {temp})].
	
	anXMLElement attributeAt: 'transform' put: (description joinSeparatedBy: String space)