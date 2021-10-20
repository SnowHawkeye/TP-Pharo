Class {
	#name : #Composant,
	#superclass : #Object,
	#category : #Circuits
}

{ #category : #adding }
Composant >> addToCircuit: aCircuit [
	aCircuit composants add: self.
]

{ #category : #'public access' }
Composant >> evaluate [
	^ self subclassResponsibility.
]

{ #category : #accessing }
Composant >> id [
^ self hash 
]

{ #category : #accessing }
Composant >> state [
^ self subclassResponsibility
]
