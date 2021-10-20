Class {
	#name : #Vanne,
	#superclass : #Composant,
	#instVars : [
		'in'
	],
	#category : #Circuits
}

{ #category : #adding }
Vanne >> addToCircuit: aCircuit [
	super addToCircuit: aCircuit.
	aCircuit sorties add: self
]

{ #category : #description }
Vanne >> description [
	|outputIn|
	outputIn := (in ifNotNil: [in class printString, ' (', in id printString, ')'] ifNil: ['non connecté']).
	^ 'Vanne (', self id printString, ') in: ', outputIn.
]

{ #category : #'public access' }
Vanne >> evaluate [
	^ in evaluate.
]

{ #category : #'input/output' }
Vanne >> setIn: aComposant [
	in := aComposant.
]

{ #category : #accessing }
Vanne >> state [
^ in state.
]
