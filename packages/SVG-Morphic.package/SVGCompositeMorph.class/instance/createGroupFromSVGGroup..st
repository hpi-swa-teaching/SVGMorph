initialization
createGroupFromSVGGroup: anElement
	"Create a group from the svg group."

	^self create: SVGGroupMorph fromSVG: anElement