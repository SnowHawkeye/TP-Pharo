Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	self assert: ((Counter startingAt: 19) increment; count) equals: 20
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7	
]

{ #category : #tests }
CounterTest >> testCounterStartingAt [
	self assert: (Counter startingAt: 5) count equals: 5.
]

{ #category : #tests }
CounterTest >> testDecrement [
	| c |
	c := Counter new count: 1.
	c decrement.
	self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testDecrementN [
	| c |
	c := Counter new count: 5.
	c decrement: 5.
	self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testIncrement [
	| c |
	c := Counter new count: 0.
	c increment.
	self assert: c count equals: 1.
]

{ #category : #tests }
CounterTest >> testIncrementN [
	| c |
	c := Counter new count: 0.
	c increment: 3.
	self assert: c count equals: 3.
]

{ #category : #tests }
CounterTest >> testInitialize [

|counter|

counter := Counter new.

self assert: counter count equals: 0.
]
