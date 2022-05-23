building
buildWith: aToolBuilder

	| widget |
	widget := SVGPanel new.
	aToolBuilder register: widget id: self name.

	widget
		model: self model;
		svgSelector: self children;
		update: self children.

	aToolBuilder
		setFrame: self frame in: widget;
		setLayout: self layout in: widget.
	aToolBuilder parent ifNotNil:[aToolBuilder add: widget to: aToolBuilder parent].
	aToolBuilder buildHelpFor: widget spec: self. 
	
	^ widget