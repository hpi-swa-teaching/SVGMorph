toolbuilder
buildTreeViewWith: aToolBuilder

	^ aToolBuilder pluggableTreeSpec new
		roots: #svgTree;
		name: #treeView;
		model: self model;
		getChildren: #getChildrenOf:;
		hasChildren: #hasChildren:;
		setSelected: #selectedElement:;
		getSelected: #selectedElement;
		getSelectedPath: #selectedPath;
		label: #displayNameOf: