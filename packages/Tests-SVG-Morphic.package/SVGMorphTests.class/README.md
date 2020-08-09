You will best understand the following if you are also familiar with the SVG Standard.

If there is no reference to Fill in the name of the SVGTestMorphs, then it means they are transparent or that they have no specified fill value. 

The TestMorphs are grouped into three groups: The ones with black Strokes(strokes are part of the SVG Standard, define the colour of outlines),orange Strokes and brown Strokes. These three groups each have different values for their attributes, and when some Morphs with the same stroke color use the same attributes then the attributes for each of the morphs will have the same value. 

These are the Morphs and how the attributes are (approximately) distributed among them(note that these attribute values only get used if the morph uses that attribute.Some attributes may only be used by one Morph):
Morph with Black Strokes: Black stroke, Transparent(no visible) fill, ...
Morph with Orange Stroke: Orange stroke, red Fill, ...
Morph with Brown Stroke: Brown stroke, blue fill, ...

We treat redFillObjects and orangeStrokeObjects as different, because not everything with such a colored stroke may have a fill, und thus the tests might not work. The same applies to the other two stroke-fill color combinations.

The tests work by invoking the TestMorphs which are supposed to have the specic attribute value that we are testing for. These Morphs will then invoke a Test that forwards their value in that attribute and the value that is supposed to be there to a general expression of comparison which will return the test result.
