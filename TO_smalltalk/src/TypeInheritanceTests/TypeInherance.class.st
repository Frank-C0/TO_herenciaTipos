Class {
	#name : #TypeInherance,
	#superclass : #TestCase,
	#category : #TypeInheritanceTests
}

{ #category : #tests }
TypeInherance >> test1 [
	| s |
	s := Array new: 2.

	s at: 1 put: RectangleClass new.
	(s at: 1) width: 17.
	(s at: 1) height: 6.

	s at: 2 put: RectangleClass new.
	(s at: 2) width: 15.
	(s at: 2) height: 8.

	s do: [ :each | each draw].
	
	self assert: true. "No hubo errores"
]
