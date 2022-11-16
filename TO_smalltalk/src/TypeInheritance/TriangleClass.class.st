"
triangle drawable
"
Class {
	#name : #TriangleClass,
	#superclass : #Object,
	#instVars : [
		'height',
		'width'
	],
	#category : #TypeInheritance
}

{ #category : #accessing }
TriangleClass >> area [
	^ height * width
]

{ #category : #drawingShape }
TriangleClass >> draw [

	| d |
	d := '*'.

	"Transcript
		show: height * width;
		cr."

	0 to: height - 2 do: [ :i | 
		1 to: width do: [ :j | 
			j = 1
				ifTrue: [ Transcript show: d ]
				ifFalse: [ 
					(j > (width / height * i - 0.5) and:
						 j < (width / height * (i + 1) - 0))
						ifTrue: [ Transcript show: d ]
						ifFalse: [ Transcript show: ' ' ] ] ].
		Transcript cr ].

	0 to: width - 1 do: [ :n | Transcript show: d ].
	Transcript
		cr;
		cr.
	^ height * width
]

{ #category : #accessing }
TriangleClass >> height [ 
	^ height
]

{ #category : #accessing }
TriangleClass >> height: h [
	height:= h
]

{ #category : #accessing }
TriangleClass >> width [
	^ width
]

{ #category : #accessing }
TriangleClass >> width: w [
	width:= w
]
