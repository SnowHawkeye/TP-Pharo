Class {
	#name : #ComposantTest,
	#superclass : #TestCase,
	#category : #Circuits
}

{ #category : #tests }
ComposantTest >> testAndFalse [
|anAnd anInterrupteur1 anInterrupteur2|

anAnd := And new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anAnd setIn1: anInterrupteur1 .
anAnd setIn2: anInterrupteur2 .

self assert: anAnd state equals: false.
]

{ #category : #tests }
ComposantTest >> testAndFalseTrue [
|anAnd anInterrupteur1 anInterrupteur2|

anAnd := And new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anAnd setIn1: anInterrupteur1 .
anAnd setIn2: anInterrupteur2 .

anInterrupteur1 on.
anInterrupteur2 off.

self assert: anAnd state equals: false.
]

{ #category : #tests }
ComposantTest >> testAndTrue [
|anAnd anInterrupteur1 anInterrupteur2|

anAnd := And new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anAnd setIn1: anInterrupteur1 .
anAnd setIn2: anInterrupteur2 .

anInterrupteur1 on.
anInterrupteur2 on.

self assert: anAnd state equals: true.
]

{ #category : #tests }
ComposantTest >> testAndTrueFalse [
|anAnd anInterrupteur1 anInterrupteur2|

anAnd := And new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anAnd setIn1: anInterrupteur1 .
anAnd setIn2: anInterrupteur2 .

anInterrupteur1 off.
anInterrupteur2 on.

self assert: anAnd state equals: false.
]

{ #category : #tests }
ComposantTest >> testDescriptionAnd [
|anAnd in1|

anAnd := And new.
in1 := Not new.

anAnd setIn1: in1.

self assert: anAnd description equals: 'And (', anAnd id printString, ') in1: Not (', in1 id printString, ') in2: non connecté'
]

{ #category : #tests }
ComposantTest >> testDescriptionAnd2Components [
|anAnd in1 in2|

anAnd := And new.
in1 := Not new.
in2 := Not new.

anAnd setIn1: in1.
anAnd setIn2: in2.

self assert: anAnd description equals: 'And (', anAnd id printString, ') in1: Not (', in1 id printString, ') in2: Not (', in2 id printString, ')'
]

{ #category : #tests }
ComposantTest >> testDescriptionInterrupteur [
|anInterrupteur|

anInterrupteur := Interrupteur new.

self assert: anInterrupteur description equals: 'Interrupteur (', anInterrupteur id printString, ')'
]

{ #category : #tests }
ComposantTest >> testDescriptionNot [

|aNot in|

aNot := Not new.
in := And new.

aNot setIn: in.

self assert: aNot description equals: 'Not (', aNot id printString, ') in: And (', in id printString, ')'
]

{ #category : #tests }
ComposantTest >> testDescriptionNotNoComponent [

|aNot|

aNot := Not new.
self assert: aNot description equals: 'Not (', aNot id printString, ') in: non connecté'
]

{ #category : #tests }
ComposantTest >> testDescriptionOr [

|anOr in1|

anOr := Or new.
in1 := Not new.

anOr setIn1: in1.

self assert: anOr description equals: 'Or (', anOr id printString, ') in1: Not (', in1 id printString, ') in2: non connecté'
]

{ #category : #tests }
ComposantTest >> testDescriptionOr2Components [
|anOr in1 in2|

anOr := Or new.
in1 := Not new.
in2 := And new.

anOr setIn1: in1.
anOr setIn2: in2.

self assert: anOr description equals: 'Or (', anOr id printString, ') in1: Not (', in1 id printString, ') in2: And (', in2 id printString, ')'
]

{ #category : #tests }
ComposantTest >> testDescriptionVanne [
|aVanne in|

aVanne := Vanne new.
in := And new.

aVanne setIn: in.

self assert: aVanne description equals: 'Vanne (', aVanne id printString, ') in: And (', in id printString, ')'
]

{ #category : #tests }
ComposantTest >> testDescriptionVanneNoComponent [
|aVanne|

aVanne := Vanne new.
self assert: aVanne description equals: 'Vanne (', aVanne id printString, ') in: non connecté'
]

{ #category : #tests }
ComposantTest >> testInterrupteurInit [
|anInterrupteur|

anInterrupteur := Interrupteur new.

self assert: anInterrupteur state equals: false.
]

{ #category : #tests }
ComposantTest >> testInterrupteurOff [
|anInterrupteur|

anInterrupteur := Interrupteur new.
anInterrupteur off.

self assert: anInterrupteur state equals: false.
]

{ #category : #tests }
ComposantTest >> testInterrupteurOn [
|anInterrupteur|

anInterrupteur := Interrupteur new.
anInterrupteur on.

self assert: anInterrupteur state.
]

{ #category : #tests }
ComposantTest >> testNot [
|aNot anInterrupteur|

aNot := Not new.
anInterrupteur := Interrupteur new.
anInterrupteur on.
aNot setIn: anInterrupteur .

self assert: aNot state equals: false.
]

{ #category : #tests }
ComposantTest >> testNotTrue [
|aNot anInterrupteur|

aNot := Not new.
anInterrupteur := Interrupteur new.
anInterrupteur off.
aNot setIn: anInterrupteur .

self assert: aNot state equals: true.
]

{ #category : #tests }
ComposantTest >> testOrFalse [
|anOr anInterrupteur1 anInterrupteur2|

anOr := Or new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anOr setIn1: anInterrupteur1 .
anOr setIn2: anInterrupteur2 .

self assert: anOr state equals: false.
]

{ #category : #tests }
ComposantTest >> testOrFalseTrue [
|anOr anInterrupteur1 anInterrupteur2|

anOr := Or new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anOr setIn1: anInterrupteur1 .
anOr setIn2: anInterrupteur2 .

anInterrupteur2 on.

self assert: anOr state equals: true.
]

{ #category : #tests }
ComposantTest >> testOrTrue [
|anOr anInterrupteur1 anInterrupteur2|

anOr := Or new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anOr setIn1: anInterrupteur1 .
anOr setIn2: anInterrupteur2 .

anInterrupteur1 on.
anInterrupteur2 on.

self assert: anOr state equals: true.
]

{ #category : #tests }
ComposantTest >> testOrTrueFalse [
|anOr anInterrupteur1 anInterrupteur2|

anOr := Or new.
anInterrupteur1 := Interrupteur new.
anInterrupteur2 := Interrupteur new.

anOr setIn1: anInterrupteur1 .
anOr setIn2: anInterrupteur2 .

anInterrupteur1 on.

self assert: anOr state equals: true.
]

{ #category : #tests }
ComposantTest >> testStateCircuitExampleOffOff [

|i1 i2 iSecurite anOr aNot anAnd aVanne|

i1 := Interrupteur new.
i2 := Interrupteur new.
iSecurite := Interrupteur new.
anOr := Or new.
aNot := Not new.
anAnd := And new.
aVanne := Vanne new.

i1 off.
i2 off.
iSecurite on.

anOr setIn1: i1; setIn2: i2.
aNot setIn: iSecurite.
anAnd setIn1: anOr .
anAnd setIn2: aNot .
aVanne setIn: anAnd.

self assert: aVanne state equals: false.

]

{ #category : #tests }
ComposantTest >> testStateCircuitExampleOnOff [

|i1 i2 iSecurite anOr aNot anAnd aVanne|

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
anAnd setIn1: anOr .
anAnd setIn2: aNot .
aVanne setIn: anAnd.

self assert: aVanne state equals: false.

]

{ #category : #tests }
ComposantTest >> testStateCircuitExampleOnOn [

|i1 i2 iSecurite anOr aNot anAnd aVanne|

i1 := Interrupteur new.
i2 := Interrupteur new.
iSecurite := Interrupteur new.
anOr := Or new.
aNot := Not new.
anAnd := And new.
aVanne := Vanne new.

i1 on.
i2 on.
iSecurite on.

anOr setIn1: i1; setIn2: i2.
aNot setIn: iSecurite.
anAnd setIn1: anOr .
anAnd setIn2: aNot .
aVanne setIn: anAnd.

self assert: aVanne state equals: false.

]

{ #category : #tests }
ComposantTest >> testVanneFalse [
|aVanne anInterrupteur|

anInterrupteur := Interrupteur new.
aVanne := Vanne new.

aVanne setIn: anInterrupteur.
anInterrupteur off.

self assert: aVanne state equals: false.
]

{ #category : #tests }
ComposantTest >> testVanneTrue [
|aVanne anInterrupteur|

anInterrupteur := Interrupteur new.
aVanne := Vanne new.

aVanne setIn: anInterrupteur.
anInterrupteur on.

self assert: aVanne state equals: true.
]
