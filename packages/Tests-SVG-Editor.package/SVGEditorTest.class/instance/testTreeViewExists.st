testing
testTreeViewExists

	| treeView |
	treeView := self subject findByName: #treeView.
	self deny: treeView morphs isEmpty