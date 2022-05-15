as yet unclassified
buildWith: aToolBuilder

	| widget |
	widget := SVGPanel new.
	aToolBuilder register: widget id: self name.

	widget model: self model.

	self children isSymbol
		ifTrue: [
			widget getChildrenSelector: self children.
			widget update: self children]
		ifFalse: [
			aToolBuilder buildAll: self children in: widget].

	aToolBuilder setFrame: self frame in: widget.
	aToolBuilder setLayout: self layout in: widget.
	
	aToolBuilder parent ifNotNil:[aToolBuilder add: widget to: aToolBuilder parent].

	widget borderWidth: 0.
	aToolBuilder buildHelpFor: widget spec: self. 
	widget color: Color transparent.
	
	^ widget