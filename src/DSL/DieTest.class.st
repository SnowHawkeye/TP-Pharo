Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #DSL
}

{ #category : #tests }
DieTest >> testAddTwoDice [

self assert: ((Die withFaces: 6) + (Die withFaces: 6)) dieNumber equals: 2.

]

{ #category : #tests }
DieTest >> testAddingDieAndHandle [

	| hd |
	hd := (Die withFaces: 6) + (DieHandle new add: (Die withFaces: 6); yourself).
	self assert: hd dieNumber equals: 2.
]

{ #category : #tests }
DieTest >> testD6 [

	self assert: (Die new faces: 6) faces equals: 6.
]

{ #category : #tests }
DieTest >> testInitialize [

	| d |
	d := Die new.
	self assert: d faces equals: 6.
]

{ #category : #tests }
DieTest >> testInitializeWithFaces [

	| d |
	d := Die withFaces: 10.
	self assert: d faces equals: 10.
]

{ #category : #tests }
DieTest >> testRoll [

	| d |
	d := (Die new faces: 6).
	1000 timesRepeat: [ self assert: (d roll between: 1 and: d faces) ]
]
