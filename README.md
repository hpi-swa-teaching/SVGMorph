# SVGMorph
(swt20-18)

# Installation

# Usage

(enter some pictures)

Use the command "SVGMorph example" and the choose an SVG file from your computer to open thta file in Squeak

Use the Halo to scale the opened SVGMorph

Display Rectangles, Circles, Ellipses, Linees, Polylines, Polygons and Paths(defined according to https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes)

Can Display Paths, arcs and Bezier curves.

Can Display Text in various ways(like curves)

# Known Issues

-not all SVGs can displayed correctly(check how this image(demo1.svg) looks when you open it with your web browser

-not all values cann be changed by interacting with the object menu(accessed using "inspect")

-when downscaling the SVGMOrph, the TextMorphs cannot be downscaled anymore after a while and leave theitr boundaries while everything else 
shrinks(add example picture)

-an image with all basic image types separated from one another throws SAXParseException when opened with SVGMorph example - could be caused by problematic xml-related expression at the start

-basic shapes are filled with black color(does not affect polygon and polyline)

-cannot display bezier curves properly(they are displayed as fille-out ellipses) - in contrast: arcs are mostly displayed well except for some full shapes that are filled with black(even though they appear to be slightly different

-properties cannot be changed with inspect window

-when enlarging path1 and path2, the red dots get deformed to cubes with spikes(path3 has yet to be tested)

-when enlarging, some edges stick a bit out

-(properties of Morph do not have the same names as the SVG attributes they are caused by)

-fetching an arbitrary path via xlink: hhref does not work

-sometimes TextMorphs, when reduce in size, do not shrink but disappear upward

-when enlarging textMorph, size changes do not happen smoothly but rather sudden

