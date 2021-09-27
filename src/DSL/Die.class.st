Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #DSL
}

{ #category : #initialize }
Die class >> withFaces: aNumber [ 
	"Create and initialize a new die with aNumber faces."
	^ self new faces: aNumber; yourself.
]

{ #category : #adding }
Die >> + aDicable [
	
	^ aDicable sumWithDie: self	
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [ 
	faces := anInteger 
]

{ #category : #initialize }
Die >> initialize [

	faces := 6.
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'.
]

{ #category : #rolling }
Die >> roll [
	^ faces atRandom 
]

{ #category : #adding }
Die >> sumWithDie: aDie [
	
	^ DieHandle new
		add: self;
		add: aDie;
		yourself .
]

{ #category : #adding }
Die >> sumWithDieHandle: aDieHandle [

	^ aDieHandle sumWithDie: self.
]
