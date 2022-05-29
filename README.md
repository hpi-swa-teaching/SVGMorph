![CI Status](https://github.com/hpi-swa-teaching/SVGMorph/actions/workflows/ci.yml/badge.svg)

# SVGMorph
(SWT22-04)

Implements the SVG Standard in the Squeak programming language as well as providing a basic SVG Editor. 

## Installation
Install `metacello-work` in your Squeak-image if you have not done so already. In any case, copy the following into your workspace to get started:
```smalltalk
Metacello new
    baseline: 'SVGMorph';
    repository: 'github://hpi-swa-teaching/SVGMorph:dev/packages';
    load
```

Now you will be able to use `SVGMorph` and `SVGEditor` in your Squeak image.

## Usage

There are three ways of using SVGMorph:

### Using SVGMorph directly

The SVGMorph class provides you with a number of constructor methods for loading SVGs directly. For example, you can provide `SVGMorph fromString:` with the string of an SVG to be parsed.

### Using the SVG Editor

Run `SVGEditor open` in your Workspace. The editor will open in a new window.

### Using `SVGMorph example`

Run `SVGMorph example.` in your Squeak Workspace. You will be presented with a file choosing dialog to select a file to be opened in a new window.

## Features

(List of SVG Functionality/Features as defined by: [Wikipedia](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) and  [MDN Docs](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial))

- Displaying of SVGs
    - Rectangles, Circles, Ellipses, Text, Lines, Polylines, Polygons and Paths
    - SVG Fills and Strokes
    - Scaling the opened SVGMorphs via Halo
- Exporting SVGMorphs
- Viewing SVGs in an editor window

For unsupported features and known issues, please take a look at the [Wiki](https://github.com/hpi-swa-teaching/SVGMorph/wiki/Known-Issues-and-unsupported-features)
