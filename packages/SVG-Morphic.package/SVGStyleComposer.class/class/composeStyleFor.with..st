as yet unclassified
composeStyleFor: aSVGComponent with: aSVGStyle
	
	| svgStyleComposer |

	svgStyleComposer := self new.
	
	svgStyleComposer balloonStyle: aSVGComponent composedStyle.
	svgStyleComposer svgStyle: aSVGStyle.
	
	^ svgStyleComposer setStyles
	
