baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec
				package: 'SVG-Morphic';
				package: 'Tests - SVG-Morphic' with: [spec requires: #('core')].
			spec
				group: 'default' with: #('SVG-Morphic''Tests - SVG-Morphic');
				group: 'core' with: #('SVG-Morphic');
				group: 'tests' with: #( 'Tests - SVG-Morphic')];
				yourself.