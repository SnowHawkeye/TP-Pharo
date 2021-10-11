Class {
	#name : #And,
	#superclass : #Porte2Entrees,
	#category : #Circuits
}

{ #category : #description }
And >> description [
|outputIn1 outputIn2|

	outputIn1 := (in1 ifNotNil: [in1 class printString, ' (', in1 id printString, ')'] ifNil: ['non connecté']).
	outputIn2 := (in2 ifNotNil: [in2 class printString, ' (', in2 id printString, ')'] ifNil: ['non connecté'] ).
	^ 'And (', self id printString, ') in1: ', outputIn1 , ' in2: ', outputIn2 .
]

{ #category : #accessing }
And >> state [
^ in1 state and: in2 state
]
