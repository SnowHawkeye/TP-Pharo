Extension { #name : #Integer }

{ #category : #'*DSL' }
Integer >> D10 [
	^ self D: 10.
]

{ #category : #'*DSL' }
Integer >> D20 [ 
 ^ self D: 20.
]

{ #category : #'*DSL' }
Integer >> D4 [
	^ self D: 4.
]

{ #category : #'*DSL' }
Integer >> D6 [
	^ self D: 6.
]

{ #category : #'*DSL' }
Integer >> D: anInteger [

	| hd |
	hd := DieHandle new.
	self timesRepeat: [ hd add: (Die new faces: anInteger) ].
	^ hd 
]
