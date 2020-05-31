# SVGMorph
(swt20-18)

# Installation

# Supported/Not Supported Features

Scaling the opened SVGMorphs via Halo.

Display Rectangles, Circles, Ellipses, Linees, Polylines, Polygons and Paths(defined according to https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes)

Can Display Paths, arcs and Bezier curves(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths).

Can Display Text in various ways(like curves)(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Texts)

Can Display Fills and Strokes(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Fills_and_Strokes).

Can Display Gradients(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Gradients)

Can Display Patterns(defined according to:https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Patterns)

Not supported:

Everything else inside and outside the SVG Standard.

# Usage
There are two ways of using the morph:

Using SVGMorph example:

Open the Squeak Workspace. Type the command "SVGMorph example" inside, mark it und and press Ctrl+D for "do it"on it. Then, a dialog will pop up that will allow you to choose a file from the file system. Choose the svg file you want to open in Squeak. Then click the "ok" option in the dialog(if you do not want to insert an image, click "cancel", also in the same dialog). If you chose "ok", the SVGMorph of your chosen picture just appeared in your Squeak image.

Using SVGMorph fromFile:
Open the Squeak Workspace. Find the absolute or relative Path to the file you want to open. Then type the command "(SVGMorph fromFile: 'absoluteOrRelativePathToFile') openInWorld" and then the morph will appear in your Squeak image.


# Known Issues

-when downscaling the SVGMorph, the TextMorphs cannot be downscaled anymore after a while and leave their boundaries while everything else 
shrinks

-sometimes TextMorphs, when reduced in size, do not shrink but disappear upward from the field of view

-basic shapes are filled with black color when that is not in the fill attribute(which is usually transparent in that case), only in the stroke attribute(only shapes with fill attributes are affected)

-cannot display bezier curves properly(they are displayed as filled-out half ellipses) - in contrast: arcs are mostly displayed well

-when enlarging this image, the dots at the edges of the rectangle get deformed to cubes with spikes(source code without enlarging below the image):

![](https://raw.githubusercontent.com/hpi-swa-teaching/SVGMorph/dev/docs/issues/deformed_circles.svg)

```
<svg width="200" height="200" xmlns="http://www.w3.org/2000/svg">

  <path d="M10 10"/>

  <!-- Points -->
  <circle cx="10" cy="10" r="2" fill="red"/>

</svg>
```
-stroke-linejoin and stroke-linecap properties specified in the programs are not always adhered to

-stroke-dasharray does not always create dashed lines on a stroke

-strokes and fills are not always properly manipulated using CSS

-gradients are only displayed as specified in rare cases(in the other other cases the shapes just have the color of the stop-color offset 0%)
-cannot display patterns because it does not recognize a pattern specification(it apppears to read it as a fill for some reason)
