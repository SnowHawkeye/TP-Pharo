Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #DSL
}

{ #category : #tests }
DieHandleTest >> testAddingHandleAndDie [

	| hd res |
	hd := DieHandle new
		add: (Die withFaces: 6);
		add: (Die withFaces: 10);
		yourself.
	res := hd + (Die withFaces: 20).
	self assert: res dieNumber equals: 3.
]

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [

	| handle |
	handle := DieHandle new.
	handle add: (Die withFaces: 6).
	self assert: handle dieNumber equals: 1.
	handle add: (Die withFaces: 6).
	self assert: handle dieNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testCreateHandle [

	| hd |
	hd := DieHandle new.
	hd add: (Die new faces: 10).
	hd add: (Die new faces: 8).
	self assert: hd dieNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testD20 [

	| hd |
	hd := 2 D20.
	self assert: hd dieNumber equals: 2.
	self assert: hd dice first faces equals: 20.
]

{ #category : #tests }
DieHandleTest >> testDSL [

	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle dieNumber equals: 5.
	
]

{ #category : #tests }
DieHandleTest >> testRollHandle [

	| hd |
	hd := DieHandle new.
	hd add: (Die new faces: 10).
	hd add: (Die new faces: 8).	
	1000 timesRepeat: [ self assert: (hd roll between: 2 and: 18) ].
]

{ #category : #tests }
DieHandleTest >> testSumOfHandles [

	| hd1 hd2 hd3 |
	hd1 := DieHandle new
		add: (Die withFaces: 20);
		add: (Die withFaces: 20);
		yourself.
	
	hd2 := DieHandle new
		add: (Die withFaces: 10);
		add: (Die withFaces: 10);
		yourself.	
		
	hd3 := hd1 + hd2.
	self assert: hd3 dieNumber equals: 4.
]
