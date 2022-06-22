helpers
mappedToBounds: aRectangle
	"Answer a copy of the receiver with the appropriate origin and direction."

	|o newRamp|
	newRamp := OrderedCollection new.
	newRamp := self colorRamp collect: [:assoc | Association key: assoc key * self direction x value: assoc value].
	self mapsToObjectBounds
		ifTrue: [^ self copy
			origin: (o := aRectangle origin + (self origin * aRectangle extent));
			colorRamp: newRamp;
			direction: aRectangle extent x @ 0;
			normal: nil;
			yourself].
	^ self