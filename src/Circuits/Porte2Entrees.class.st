Class {
	#name : #Porte2Entrees,
	#superclass : #Porte,
	#instVars : [
		'in1',
		'in2'
	],
	#category : #Circuits
}

{ #category : #'input/output' }
Porte2Entrees >> setIn1: aComponent [
 in1 := aComponent 
]

{ #category : #'input/output' }
Porte2Entrees >> setIn2: aComponent [
 in2 := aComponent 
]
