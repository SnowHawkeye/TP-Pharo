Class {
	#name : #Vanne,
	#superclass : #Composant,
	#instVars : [
		'in'
	],
	#category : #Circuits
}

{ #category : #description }
Vanne >> description [
	|outputIn|
	outputIn := (in ifNotNil: [in class printString, ' (', in id printString, ')'] ifNil: ['non connecté']).
	^ 'Vanne (', self id printString, ') in: ', outputIn.
]

{ #category : #'input/output' }
Vanne >> setIn: aComposant [
	in := aComposant.
]

{ #category : #accessing }
Vanne >> state [
^ in state.
]
