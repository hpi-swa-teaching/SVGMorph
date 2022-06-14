as yet unclassified
pointDataFromSVG: anElement
	"Answer a collection of points from the polygon data."
	
	|points stream x y|
	points := OrderedCollection new.
	stream := (anElement attributeAt: 'points') readStream.
	[stream atEnd] whileFalse: [
		x := stream nextNumber.
		y := stream nextNumber.
		(x notNil and: [y notNil])
			ifTrue: [points add: x @ y]].
	^ points