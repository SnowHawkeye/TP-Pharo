Class {
	#name : #Interrupteur,
	#superclass : #Composant,
	#instVars : [
		'state'
	],
	#category : #Circuits
}

{ #category : #adding }
Interrupteur >> addToCircuit: aCircuit [
	super addToCircuit: aCircuit.
	aCircuit interrupteurs add:self.
]

{ #category : #description }
Interrupteur >> description [
	^ 'Interrupteur (', self id printString, ')'
]

{ #category : #'public access' }
Interrupteur >> evaluate [
	^ state ifTrue: [SignalHaut new] ifFalse: [SignalBas new]
]

{ #category : #initialization }
Interrupteur >> initialize [ 
 state := false.
]

{ #category : #accessing }
Interrupteur >> off [
state := false
]

{ #category : #accessing }
Interrupteur >> on [
state := true
]

{ #category : #accessing }
Interrupteur >> state [
^ state 
]
