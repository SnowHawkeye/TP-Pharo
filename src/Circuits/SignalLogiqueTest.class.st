Class {
	#name : #SignalLogiqueTest,
	#superclass : #TestCase,
	#category : #Circuits
}

{ #category : #tests }
SignalLogiqueTest >> testSignalBasAndSignalBas [

|s1 s2|

s1 := SignalBas new.
s2 := SignalBas new.

self assert: (s1 and: s2) class equals: SignalBas.
]

{ #category : #tests }
SignalLogiqueTest >> testSignalBasAndSignalHaut [

|s1 s2|

s1 := SignalBas new.
s2 := SignalHaut new.

self assert: (s1 and: s2) class equals: SignalBas.
]

{ #category : #tests }
SignalLogiqueTest >> testSignalBasNot [

|aSignalBas|

aSignalBas := SignalBas new.
self assert: aSignalBas not class equals: SignalHaut .
]

{ #category : #tests }
SignalLogiqueTest >> testSignalHautAndSignalBas [

|s1 s2|

s1 := SignalHaut new.
s2 := SignalBas new.

self assert: (s1 and: s2) class equals: SignalBas.
]

{ #category : #tests }
SignalLogiqueTest >> testSignalHautAndSignalHaut [

|s1 s2|

s1 := SignalHaut new.
s2 := SignalHaut new.

self assert: (s1 and: s2) class equals: SignalHaut.
]

{ #category : #tests }
SignalLogiqueTest >> testSignalHautNot [

|aSignalHaut|

aSignalHaut := SignalHaut new.
self assert: aSignalHaut not class equals: SignalBas .
]
