# SVGMorph
(swt20-18)
# Installation

# Supported/Not Supported Features

Supported:
Scaling the opened SVGMOrphs via Halo.
Scaling the opened SVGMorphs via Halo.

Display SVG Rectangles, Circles, Ellipses, Linees, Polylines, Polygons and Paths.

Can Display SVG Fills and Strokes.

Can Display SVG Gradients.

Can Display SVG Patterns.

Every supported SVG Feature is defined as according to: https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial

Not supported:

Everything else in the SVG Standard.
Everything else inside and outside the SVG Standard.

# Usage
There are two ways of using the morph:

Using SVGMorph example:

Open the Squeak Workspace. Type the command "SVGMorph example", mark it und and press Ctrl+D for "do it"on it. Then, a dialog will pop up that will allow you to choose a file from the file system. Choose the svg file you wnat to open in Squeak. Then click the "ok" option in the dialog(if you do not want to insert an image, click "cancel", also in the same dialog)
Open the Squeak Workspace. Type the command "SVGMorph example" inside, mark it und and press Ctrl+D for "do it"on it. Then, a dialog will pop up that will allow you to choose a file from the file system. Choose the svg file you want to open in Squeak. Then click the "ok" option in the dialog(if you do not want to insert an image, click "cancel", also in the same dialog). If you chose "ok", the SVGMorph of your chosen picture just appeared in your Squeak image.

Using SVGMorph fromFile:
Open the Squeak Workspace. Find the absolute or relative Path to the file ypu want to open. Then type the command "(SVGMorph fromFile: 'absoluteOrRelativePathToFile') openInWorld" and then the morph will appear
Open the Squeak Workspace. Find the absolute or relative Path to the file you want to open. Then type the command "(SVGMorph fromFile: 'absoluteOrRelativePathToFile') openInWorld" and then the morph will appear in your Squeak image.


# Known Issues

-sometimes TextMorphs, when reduced in size, do not shrink but disappear upward from the field of view

-when enlarging textMorph, size changes do not happen smoothly but rather sudden

-basic shapes are filled with black color when that is not in the fill attribute(which is usually tansparent in that case), only in the stroke attribute(only shapes with fill attributes are affected)
-basic shapes are filled with black color when that is not in the fill attribute(which is usually transparent in that case), only in the stroke attribute(only shapes with fill attributes are affected)

-cannot display bezier curves properly(they are displayed as filled-out split ellipses) - in contrast: arcs are mostly displayed well except for some full shapes that are filled with black
-cannot display bezier curves properly(they are displayed as filled-out half ellipses) - in contrast: arcs are mostly displayed well

-when enlarging this image, the dots at the edges of the rectangle get deformed to cubes with spikes(source code without enlarging below):
-when enlarging this image, the dots at the edges of the rectangle get deformed to cubes with spikes(source code without enlarging below the image):

![](docs/issues/deformed_circles.PNG)

```
-stroke-linejoin and stroke-linecap properties specified in the programs are not always adhered to

-path may wrongly have the same color as stroke(?)

-stroke-dasharray does not always create dashed lines on a stroke

-strokes and fills are not always properly manipulated using CSS
-gradients are only displayed as specified in rare cases(in the other other cases the shapes just have the color of the stop-color offset 0%)
-cannot display patterns because it does not recognize a pattern specification(it apppears to read it as a fill for some reason)
