baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			 spec
        			package: 'SVG-Morphic'.
			 spec
 			       package: 'Tests - SVG-Morphic'.
			spec
				group: 'default' with: #();
				group: 'tests' with: #()];
				yourself