baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec
				package: 'SVG-Morphic';
				package: 'Tests-SVG-Linter';
				package: 'SVG-Editor' with: [spec requires: #('core')];
				package: 'Tests-SVG-Morphic' with: [spec requires: #('core' 'mtf')];
				package: 'Tests-SVG-Editor' with:  [spec requires: #('editor' 'mtf')];
				baseline: 'MorphicTestingFramework' with: [spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			spec
				group: 'default' with: #('SVG-Morphic' 'SVG-Editor' 'Tests-SVG-Morphic' 'Tests-SVG-Editor');
				group: 'core' with: #('SVG-Morphic');
				group: 'linter' with: #('Tests-SVG-Linter');
				group: 'editor' with: #('SVG-Editor');
				group: 'tests' with: #('Tests-SVG-Morphic' 'Tests-SVG-Editor');
				group: 'mtf' with: #('MorphicTestingFramework');
				yourself .
]
