baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec
				package: 'SVG-Morphic';
				package: 'SVG-Editor';
				package: 'Tests-SVG-Morphic' with: [spec requires: #('core')];
				package: 'Tests-SVG-Editor' with:  [spec requires: #('editor')].
			spec
				group: 'default' with: #('SVG-Morphic' 'SVG-Editor' 'Tests-SVG-Morphic' 'Tests-SVG-Editor');
				group: 'core' with: #('SVG-Morphic');
				group: 'editor' with: #('SVG-Editor');
				group: 'tests' with: #( 'Tests-SVG-Morphic' 'Tests-SVG-Editor')];
				yourself .