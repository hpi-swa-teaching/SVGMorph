accessing
setDimensionsFromSVG: anElement
	"Set the receiver's dimensions from the given svg element."

	|w h viewBox str|
	w := anElement attributeAt: 'width' ifAbsent: ['100%'].
	h := anElement attributeAt: 'height' ifAbsent: ['100%'].
	str := anElement attributeAt: 'viewBox'.
	viewBox := str isNil
		ifTrue: [self defaultViewBox]
		ifFalse: [str := str readStream.
				str nextNumber@str nextNumber extent: str nextNumber@str nextNumber].
	(w withBlanksTrimmed endsWith: '%')
		ifTrue: [viewBox := viewBox withWidth: viewBox width * w asNumber // 100]
		ifFalse: [(w withBlanksTrimmed endsWith: 'mm')
				ifTrue: [viewBox := viewBox withWidth: (w asNumber * 3.571429) rounded]
				ifFalse: [viewBox := viewBox withWidth: w asInteger]].
	(h withBlanksTrimmed endsWith: '%')
		ifTrue: [viewBox := viewBox withHeight: viewBox height * h asNumber // 100]
		ifFalse: [(h withBlanksTrimmed endsWith: 'mm')
				ifTrue: [viewBox := viewBox withHeight: (h asNumber * 3.571429) rounded]
				ifFalse: [viewBox := viewBox withHeight: h asInteger]].
	fullBounds := bounds := viewBox.