Class {
	#name : #Stone,
	#superclass : #Object,
	#category : #StonePaperScisscors
}

{ #category : #playing }
Stone class >> play: aTool [
	^ aTool playWithStone
]

{ #category : #playing }
Stone class >> playWithPaper [
	^ 'paper'
]

{ #category : #playing }
Stone class >> playWithScissors [ 
	^ 'stone'
]

{ #category : #playing }
Stone class >> playWithStone [ 
	^ 'draw'
]
