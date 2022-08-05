defaults
default
	"Answer the default renderer."

	^ DefaultRenderer ifNil: [^ DefaultRenderer := SVGBalloonRenderer new]