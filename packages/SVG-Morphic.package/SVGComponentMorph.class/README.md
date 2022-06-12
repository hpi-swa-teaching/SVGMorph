A SVGComponentMorph is an abstract superclass for all svg elements.

Instance Variables
	cachedComposedStyle:		<Dictionary>
	id:		<String>
	renderer:		<SVGRenderer>
	style:		<Dictionary>
	transform:		<MatrixTransform2x3>

cachedComposedStyle:
    - the style of an element is the composition of its style and its parents styles
    - this is a cache for this composed style

id:
    - the id of the element specified in the xml

renderer:
    - the renderer of this element

style:
    - the style specified for this element in the xml

transform:
    - the transformation matrix applied to this element