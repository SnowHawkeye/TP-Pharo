Class {
	#name : #CircuitTest,
	#superclass : #TestCase,
	#category : #Circuits
}

{ #category : #tests }
CircuitTest >> testBuildCircuitComposants [

|i1 i2 iSecurite anOr aNot anAnd aVanne aComposantCollection aCircuit expected |

i1 := Interrupteur new.
i2 := Interrupteur new.
iSecurite := Interrupteur new.
anOr := Or new.
aNot := Not new.
anAnd := And new.
aVanne := Vanne new.

i1 on.
i2 off.
iSecurite on.

anOr setIn1: i1; setIn2: i2.
aNot setIn: iSecurite.
anAnd setIn1: anOr.
anAnd setIn2: aNot.
aVanne setIn: anAnd.

aComposantCollection := OrderedCollection newFrom: {i1 . i2 . iSecurite . anOr . aNot . anAnd . aVanne}.
aCircuit := Circuit buildFromComposants: aComposantCollection.

expected := aComposantCollection sort: [:c1 :c2 | c1 id < c2 id].

self assert: aCircuit composants equals: expected .

]

{ #category : #tests }
CircuitTest >> testBuildCircuitInterrupteurs [

|i1 i2 iSecurite anOr aNot anAnd aVanne aComposantCollection aCircuit expected |

i1 := Interrupteur new.
i2 := Interrupteur new.
iSecurite := Interrupteur new.
anOr := Or new.
aNot := Not new.
anAnd := And new.
aVanne := Vanne new.

i1 on.
i2 off.
iSecurite on.

anOr setIn1: i1; setIn2: i2.
aNot setIn: iSecurite.
anAnd setIn1: anOr.
anAnd setIn2: aNot.
aVanne setIn: anAnd.

aComposantCollection := OrderedCollection newFrom: {i1 . i2 . iSecurite . anOr . aNot . anAnd . aVanne}.
aCircuit := Circuit buildFromComposants: aComposantCollection.

expected := OrderedCollection newFrom: {i1 . i2 . iSecurite}.
expected sort: [ :c1 :c2 | c1 id < c2 id ].

self assert: aCircuit interrupteurs equals: expected .

]

{ #category : #tests }
CircuitTest >> testBuildCircuitSorties [

|i1 i2 iSecurite anOr aNot anAnd aVanne aComposantCollection aCircuit expected |

i1 := Interrupteur new.
i2 := Interrupteur new.
iSecurite := Interrupteur new.
anOr := Or new.
aNot := Not new.
anAnd := And new.
aVanne := Vanne new.

i1 on.
i2 off.
iSecurite on.

anOr setIn1: i1; setIn2: i2.
aNot setIn: iSecurite.
anAnd setIn1: anOr.
anAnd setIn2: aNot.
aVanne setIn: anAnd.

aComposantCollection := OrderedCollection newFrom: {i1 . i2 . iSecurite . anOr . aNot . anAnd . aVanne}.
aCircuit := Circuit buildFromComposants: aComposantCollection.

expected := OrderedCollection newFrom: { aVanne }.
expected sort: [ :c1 :c2 | c1 id < c2 id ].

self assert: aCircuit sorties equals: expected .

]
