# SVGMorph
(swt20-18)

# Installation

# Usage

Use the command "SVGMorph example" and the choose an SVG file from your computer to open that file in Squeak

Use the Halo to scale the opened SVGMorph

Display Rectangles, Circles, Ellipses, Linees, Polylines, Polygons and Paths(defined according to https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes)

Can Display Paths, arcs and Bezier curves(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths).

Can Display Text in various ways(like curves)(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Texts)

# Known Issues

-not all SVGs can displayed correctly

-not all values cann be changed by interacting with the object menu(accessed using "inspect")

-when downscaling the SVGMorph, the TextMorphs cannot be downscaled anymore after a while and leave their boundaries while everything else 
shrinks

-an image with all basic image types separated from one another throws SAXParseException when opened with SVGMorph example - could be caused by problematic xml-related expression at the start

-basic shapes are filled with black color when that is not specified(does not affect polygon and polyline)

-cannot display bezier curves properly(they are displayed as fille-out ellipses) - in contrast: arcs are mostly displayed well except for some full shapes that are filled with black(even though they appear to be slightly different from wat is displayed in the web browser)

-when enlarging path1.svg and path2.svg, the red dots get deformed to cubes with spikes(path3.svg has yet to be tested)

-when enlarging, some edges stick a bit out

-(properties of Morph do not have the same names as the SVG attributes they are caused by)

-fetching an arbitrary path via xlink: hhref does not work

-sometimes TextMorphs, when reduced in size, do not shrink but disappear upward from the field of view

-when enlarging textMorph, size changes do not happen smoothly but rather sudden

