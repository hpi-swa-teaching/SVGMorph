# SVGMorph
(swt20-18)

# Installation

# Supported/Not Supported Features

Supported:

Display Rectangles, Circles, Ellipses, Linees, Polylines, Polygons and Paths(defined according to https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes)

Scaling the opened SVGMOrphs via Halo.

Can Display Paths, arcs and Bezier curves(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths).

Can Display Text in various ways(like curves)(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Texts)

Not supported:

Everything else in the SVG Standard.

# Usage

Use the command "SVGMorph example" and the choose an SVG file from your computer to open that file in Squeak

# Known Issues

-when downscaling the SVGMorph, the TextMorphs cannot be downscaled anymore after a while and leave their boundaries while everything else 
shrinks

-sometimes TextMorphs, when reduced in size, do not shrink but disappear upward from the field of view

-when enlarging textMorph, size changes do not happen smoothly but rather sudden

-basic shapes are filled with black color when that is not in the fill attribute(which is usually tansparent in that case), only in the stroke attribute(only shapes with fill attributes are affected)

-cannot display bezier curves properly(they are displayed as filled-out split ellipses) - in contrast: arcs are mostly displayed well except for some full shapes that are filled with black

-when enlarging a sample image, the red dots get deformed to cubes with spikes

