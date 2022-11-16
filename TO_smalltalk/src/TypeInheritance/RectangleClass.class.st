"
Rectangle shape with protocol

"
Class {
	#name : #RectangleClass,
	#superclass : #Object,
	#instVars : [
		'height',
		'width'
	],
	#category : #TypeInheritance
}

{ #category : #accessing }
RectangleClass >> area [
	^ height * width
]

{ #category : #drawingShape }
RectangleClass >> draw [

	| d |
	d := '*'.
	"Transcript
		show: (height * width);
		cr."

	1 to: width  do: [ :n | Transcript show: d ].
	Transcript cr.

	1 to: height do: [ :ni | 
		1 to: width do: [ :j | 
			(j = 1 or: j = width)
				ifTrue: [ Transcript show: d ]
				ifFalse: [ Transcript show: ' ' ] ].
		Transcript cr ].

	0 to: width - 1 do: [ :n | Transcript show: d ].
	Transcript
		cr;
		cr.
	height * width
]

{ #category : #accessing }
RectangleClass >> height [ 
	^ height
]

{ #category : #accessing }
RectangleClass >> height: h [
	height:= h
]

{ #category : #accessing }
RectangleClass >> width [
	^ width
]

{ #category : #accessing }
RectangleClass >> width: w [
	width:= w
]
