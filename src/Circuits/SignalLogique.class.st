Class {
	#name : #SignalLogique,
	#superclass : #Object,
	#category : #Circuits
}

{ #category : #controlling }
SignalLogique >> and: aSignalLogique [ 
^ self subclassResponsibility 
]

{ #category : #controlling }
SignalLogique >> not [ 
^ self subclassResponsibility 
]

{ #category : #controlling }
SignalLogique >> or: aSignalLogique [ 
^ self subclassResponsibility 
]
