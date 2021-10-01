Class {
	#name : #Paper,
	#superclass : #Object,
	#category : #StonePaperScisscors
}

{ #category : #playing }
Paper class >> play: aTool [
	^ aTool playWithPaper
]

{ #category : #playing }
Paper class >> playWithPaper [ 
	^ 'draw'
]

{ #category : #playing }
Paper class >> playWithScissors [ 
	^ 'scissors'
]

{ #category : #playing }
Paper class >> playWithStone [ 
	^ 'paper'
]
