Class {
	#name : #Not,
	#superclass : #Porte,
	#instVars : [
		'in'
	],
	#category : #Circuits
}

{ #category : #description }
Not >> description [
	|outputIn|
	outputIn := (in ifNotNil: [in class printString, ' (', in id printString, ')'] ifNil: ['non connecté']).
	^ 'Not (', self id printString, ') in: ', outputIn.
]

{ #category : #'input/output' }
Not >> setIn: aComposant [
	in := aComposant.
]

{ #category : #accessing }
Not >> state [
^ in state not
]
