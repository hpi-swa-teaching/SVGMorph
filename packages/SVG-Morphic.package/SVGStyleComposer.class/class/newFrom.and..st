as yet unclassified
newFrom: aBalloonStyle and: aSVGStyle
	
	| svgStyleComposer |

	svgStyleComposer := self new.
	
	svgStyleComposer balloonStyle: aBalloonStyle.
	svgStyleComposer svgStyle: aSVGStyle.
	
	^ svgStyleComposer
	
