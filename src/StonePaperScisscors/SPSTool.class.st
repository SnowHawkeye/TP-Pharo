Class {
	#name : #SPSTool,
	#superclass : #Object,
	#category : #StonePaperScisscors
}

{ #category : #playing }
SPSTool class >> play: aTool [
	^ self subclassResponsibility 
]

{ #category : #playing }
SPSTool class >> playWithPaper [
	^ self subclassResponsibility 
]

{ #category : #playing }
SPSTool class >> playWithScissors [
	^ self subclassResponsibility 
]

{ #category : #playing }
SPSTool class >> playWithStone [
	^ self subclassResponsibility 
]
