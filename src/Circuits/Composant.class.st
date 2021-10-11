Class {
	#name : #Composant,
	#superclass : #Object,
	#category : #Circuits
}

{ #category : #accessing }
Composant >> id [
^ self hash 
]

{ #category : #accessing }
Composant >> state [
^ self subclassResponsibility
]
