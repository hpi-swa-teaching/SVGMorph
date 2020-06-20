baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec
				package: 'SVGMorph';
				package: 'Tests - SVG-Morphic' with: [spec requires: #('core')].
			spec
				group: 'default' with: #('SVGMorph''Tests - SVG-Morphic');
				group: 'core' with: #('SVGMorph');
				group: 'tests' with: #( 'Tests - SVG-Morphic')];
				yourself.