initialization
setDimensionsFromSVG: anElement
	"Set the receiver's dimensions from the given svg element."

	|w h viewBoxBounds str|
	w := anElement attributeAt: 'width' ifAbsent: ['100%'].
	h := anElement attributeAt: 'height' ifAbsent: ['100%'].
	str := anElement attributeAt: 'viewBox'.
	viewBoxBounds := str isNil
		ifTrue: [self defaultViewBox]
		ifFalse: [str := str readStream.
				str nextNumber @ str nextNumber extent: str nextNumber @ str nextNumber].
	(w withBlanksTrimmed endsWith: '%')
		ifTrue: [viewBoxBounds := viewBoxBounds withWidth: viewBoxBounds width * w asNumber // 100]
		ifFalse: [(w withBlanksTrimmed endsWith: 'mm')
				ifTrue: [viewBoxBounds := viewBoxBounds withWidth: (w asNumber * 3.571429) rounded]
				ifFalse: [viewBoxBounds := viewBoxBounds withWidth: w asInteger]].
	(h withBlanksTrimmed endsWith: '%')
		ifTrue: [viewBoxBounds := viewBoxBounds withHeight: viewBoxBounds height * h asNumber // 100]
		ifFalse: [(h withBlanksTrimmed endsWith: 'mm')
				ifTrue: [viewBoxBounds := viewBoxBounds withHeight: (h asNumber * 3.571429) rounded]
				ifFalse: [viewBoxBounds := viewBoxBounds withHeight: h asInteger]].
	self
		privateBounds: viewBoxBounds;
		privateFullBounds: self bounds