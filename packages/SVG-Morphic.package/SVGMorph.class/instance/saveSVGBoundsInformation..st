initialization
saveSVGBoundsInformation: anElement
	"Store the original sizing information for a later export."

	self
		svgWidth: (anElement attributeAt: 'width');
		svgHeight: (anElement attributeAt: 'height');
		viewBox: (anElement attributeAt: 'viewBox')