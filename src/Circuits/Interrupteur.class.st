Class {
	#name : #Interrupteur,
	#superclass : #Composant,
	#instVars : [
		'state'
	],
	#category : #Circuits
}

{ #category : #description }
Interrupteur >> description [
	^ 'Interrupteur (', self id printString, ')'
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
