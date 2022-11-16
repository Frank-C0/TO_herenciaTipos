"
shape parent class
"
Class {
	#name : #ShapeClass,
	#superclass : #Object,
	#instVars : [
		'sides'
	],
	#category : #ClassInherance
}

{ #category : #accessing }
ShapeClass >> area [
	^ self subclassResponsibility 
]
