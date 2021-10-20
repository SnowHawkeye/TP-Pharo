Class {
	#name : #SignalHaut,
	#superclass : #SignalLogique,
	#category : #Circuits
}

{ #category : #controlling }
SignalHaut >> and: aSignalLogique [ 
^ aSignalLogique andSignalHaut 
]

{ #category : #controlling }
SignalHaut >> andSignalBas [
	^ SignalBas new
]

{ #category : #controlling }
SignalHaut >> andSignalHaut [
	^ SignalHaut new
]

{ #category : #controlling }
SignalHaut >> not [ 
^ SignalBas new
]

{ #category : #controlling }
SignalHaut >> or: aSignalLogique [ 
^ aSignalLogique orSignalHaut
]

{ #category : #controlling }
SignalHaut >> orSignalBas [
	^ SignalHaut new
]

{ #category : #controlling }
SignalHaut >> orSignalHaut [
	^ SignalHaut new
]
