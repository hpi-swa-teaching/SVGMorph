initialization
pointDataFromSVG: anElement
	"Answer a collection of points from the polygon data."

	|pointData stream x y|
	pointData := OrderedCollection new.
	stream := (anElement attributeAt: 'points') readStream.
	[stream atEnd] whileFalse: [
		x := stream nextNumber.
		y := stream nextNumber.
		(x notNil and: [y notNil])
			ifTrue: [pointData add: x @ y]].
	^ pointData