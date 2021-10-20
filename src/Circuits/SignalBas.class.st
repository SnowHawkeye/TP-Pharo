Class {
	#name : #SignalBas,
	#superclass : #SignalLogique,
	#category : #Circuits
}

{ #category : #controlling }
SignalBas >> and: aSignalLogique [ 
^ aSignalLogique andSignalBas 
]

{ #category : #controlling }
SignalBas >> andSignalBas [ 
^ SignalBas new
]

{ #category : #controlling }
SignalBas >> andSignalHaut [ 
^ SignalBas new
]

{ #category : #controlling }
SignalBas >> not [ 
^ SignalHaut new
]

{ #category : #controlling }
SignalBas >> or: aSignalLogique [ 
^ aSignalLogique orSignalBas 
]

{ #category : #controlling }
SignalBas >> orSignalBas [ 
^ SignalBas new
]

{ #category : #controlling }
SignalBas >> orSignalHaut [ 
^ SignalHaut new
]
