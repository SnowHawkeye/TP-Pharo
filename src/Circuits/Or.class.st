Class {
	#name : #Or,
	#superclass : #Porte2Entrees,
	#category : #Circuits
}

{ #category : #description }
Or >> description [ 

|outputIn1 outputIn2|

	outputIn1 := (in1 ifNotNil: [in1 class printString, ' (', in1 id printString, ')'] ifNil: ['non connecté']).
	outputIn2 := (in2 ifNotNil: [in2 class printString, ' (', in2 id printString, ')'] ifNil: ['non connecté'] ).
	^ 'Or (', self id printString, ') in1: ', outputIn1 , ' in2: ', outputIn2 .
]

{ #category : #accessing }
Or >> state [
^ in1 state or: in2 state
]
