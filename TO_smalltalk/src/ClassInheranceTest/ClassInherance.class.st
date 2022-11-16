Class {
	#name : #ClassInherance,
	#superclass : #TestCase,
	#category : #ClassInheranceTest
}

{ #category : #tests }
ClassInherance >> testCase2 [
	| s |
	s := Array new: 2.

	s at: 1 put: RectangleClass new.
	(s at: 1) width: 17.
	(s at: 1) height: 6.

	s at: 2 put: RectangleClass new.
	(s at: 2) width: 15.
	(s at: 2) height: 8.

	s do: [ :each |  Transcript show: each area ].
	
	self assert: true. "No hubo errores"
]
