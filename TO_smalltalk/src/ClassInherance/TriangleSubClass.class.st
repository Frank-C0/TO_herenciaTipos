"
triangle shape sub class
"
Class {
	#name : #TriangleSubClass,
	#superclass : #ShapeClass,
	#instVars : [
		'height',
		'width'
	],
	#category : #ClassInherance
}

{ #category : #accessing }
TriangleSubClass >> area [
	^ (height * width)/2
]

{ #category : #accessing }
TriangleSubClass >> height [
	^ height
]

{ #category : #accessing }
TriangleSubClass >> height: h [
	height:= h
]

{ #category : #accessing }
TriangleSubClass >> width [
	^ width
]

{ #category : #accessing }
TriangleSubClass >> width: w [
	width:= w
]
