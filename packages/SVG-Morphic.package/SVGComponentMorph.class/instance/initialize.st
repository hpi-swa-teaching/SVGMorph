initialization
initialize
	"Initialize the receiver."

	super initialize.
	self
		style: Dictionary new;
		renderer: SVGRenderer default
