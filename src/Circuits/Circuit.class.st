Class {
	#name : #Circuit,
	#superclass : #Object,
	#instVars : [
		'composants',
		'interrupteurs',
		'sorties'
	],
	#category : #Circuits
}

{ #category : #building }
Circuit class >> buildFromComposants: aComposantCollection [
	|circuit sortById|
	circuit := self new.
	sortById := [ :c1 :c2| (c1 id) < (c2 id) ].
	
	aComposantCollection do: [ :each | each addToCircuit: circuit ].
	circuit composants sort: sortById.
	circuit interrupteurs sort: sortById.
	circuit sorties sort: sortById.
	
	^ circuit.
]

{ #category : #accessing }
Circuit >> composants [
	^ composants.
]

{ #category : #initialize }
Circuit >> initialize [ 

composants := OrderedCollection new.
interrupteurs := OrderedCollection new.
sorties := OrderedCollection new.
]

{ #category : #accessing }
Circuit >> interrupteurs [
	^ interrupteurs.
]

{ #category : #accessing }
Circuit >> sorties [
	^ sorties.
]
