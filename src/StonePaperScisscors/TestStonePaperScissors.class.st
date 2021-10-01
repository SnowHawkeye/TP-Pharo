Class {
	#name : #TestStonePaperScissors,
	#superclass : #TestCase,
	#category : #StonePaperScisscors
}

{ #category : #tests }
TestStonePaperScissors >> testPaperVsPaper [
	self assert: (Paper play: Paper) equals: 'draw'
]

{ #category : #tests }
TestStonePaperScissors >> testPaperVsScissors [
	self assert: (Paper play: Scissors) equals: 'scissors'
]

{ #category : #tests }
TestStonePaperScissors >> testPaperVsStone [
	self assert: (Paper play: Stone) equals: 'paper'
]

{ #category : #tests }
TestStonePaperScissors >> testScissorsVsPaper [
	self assert: (Scissors play: Paper) equals: 'scissors'
]

{ #category : #tests }
TestStonePaperScissors >> testScissorsVsScissors [
	self assert: (Scissors play: Scissors) equals: 'draw'
]

{ #category : #tests }
TestStonePaperScissors >> testScissorsVsStone [
	self assert: (Scissors play: Stone) equals: 'stone'
]

{ #category : #tests }
TestStonePaperScissors >> testStoneVsPaper [
	self assert: (Stone play: Paper) equals: 'paper'
]

{ #category : #tests }
TestStonePaperScissors >> testStoneVsScissors [
	self assert: (Stone play: Scissors) equals: 'stone'
]

{ #category : #tests }
TestStonePaperScissors >> testStoneVsStone [
	self assert: (Stone play: Stone) equals: 'draw'
]
