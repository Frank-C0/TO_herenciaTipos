"
rectangle shape sub class
"
Class {
	#name : #RectangleSubClass,
	#superclass : #ShapeClass,
	#instVars : [
		'height',
		'width'
	],
	#category : #ClassInherance
}

{ #category : #accessing }
RectangleSubClass >> area [
	^ height * width
]

{ #category : #accessing }
RectangleSubClass >> height [ 
	^ height
]

{ #category : #accessing }
RectangleSubClass >> height: h [
	height:= h
]

{ #category : #accessing }
RectangleSubClass >> width [
	^ width
]

{ #category : #accessing }
RectangleSubClass >> width: w [
	width:= w
]
