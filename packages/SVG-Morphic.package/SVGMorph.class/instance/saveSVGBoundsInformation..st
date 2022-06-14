accessing
saveSVGBoundsInformation: anElement
	"Store the original sizing information for a later export."

	self svgWidth: (anElement attributeAt: 'width').
	self svgHeight: (anElement attributeAt: 'height').
	self viewBox: (anElement attributeAt: 'viewBox')