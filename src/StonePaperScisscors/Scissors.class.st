Class {
	#name : #Scissors,
	#superclass : #Object,
	#category : #StonePaperScisscors
}

{ #category : #playing }
Scissors class >> play: aTool [
	^ aTool playWithScissors
]

{ #category : #playing }
Scissors class >> playWithPaper [ 
	^ 'scissors'
]

{ #category : #playing }
Scissors class >> playWithScissors [  
	^ 'draw'
]

{ #category : #playing }
Scissors class >> playWithStone [  
	^ 'stone'
]
