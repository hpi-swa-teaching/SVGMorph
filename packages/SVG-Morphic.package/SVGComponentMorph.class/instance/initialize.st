as yet unclassified
initialize
	"Initialize the receiver."

	super initialize.
	self 
		style: Dictionary new;
		transform: (MatrixTransform2x3 identity)