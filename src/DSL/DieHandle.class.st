Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #DSL
}

{ #category : #adding }
DieHandle >> + aDicable [
	^ aDicable sumWithDieHandle: self.
	
]

{ #category : #adding }
DieHandle >> add: aDie [ 
	dice add: aDie.
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #accessing }
DieHandle >> dieNumber [
	^ dice size.
]

{ #category : #initialize }
DieHandle >> initialize [ 
	
	dice := OrderedCollection new.
]

{ #category : #rolling }
DieHandle >> roll [

	| res |
	res := 0.
	dice do: [ : aD | res := res + aD roll ].
	^ res.
]

{ #category : #adding }
DieHandle >> sumWithDie: aDie [
	
	| handle |
	handle := self class new.
	self dice do: [ :each | handle add: each ].
	handle add: aDie.
	^ handle.
]

{ #category : #adding }
DieHandle >> sumWithDieHandle: aDieHandle [ 
	| newHandle |
	newHandle := self class new.
	
	self dice do: [ :each | newHandle add: each ].
	aDieHandle dice do: [ :each | newHandle add: each ].
	^ newHandle. 
	
]
