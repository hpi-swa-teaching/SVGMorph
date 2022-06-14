as yet unclassified
privateFullMoveBy: delta
	self privateMoveBy: delta.
	self transform offset: self transform offset + delta.