as yet unclassified
testSVGCreation

	| svg |

	svg := SVGMorph fromString: '<svg></svg>'.
	svg openInWorld.