Class {
	#name : #PCFalse,
	#superclass : #PCTrue,
	#category : #'Kernel-Objects'
}

{ #category : #'as yet unclassified' }
PCFalse >> & aBoolean [
	"Answer true if both the receiver AND the argument are true. Unlike and:, the argument is always evaluted."

	^ false
]

{ #category : #'as yet unclassified' }
PCFalse >> and: alternativeBlock [
	"Answer true if both the receiver AND the result of evaluating the given block are true. Only evaluate the given block if the receiver is true."

	^ false
]

{ #category : #'as yet unclassified' }
PCFalse >> ifFalse: falseBlock [
	"If the receiver is false, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the receiver is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ falseBlock value
]

{ #category : #'as yet unclassified' }
PCFalse >> ifTrue: trueBlock [
	"If the receiver is true, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the true is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ nil
]

{ #category : #'as yet unclassified' }
PCFalse >> ifTrue: trueBlock ifFalse: falseBlock [
	"If the receiver is true, answer the result of evaluating trueBlock. Otherwise, answer the result of evaluating falseBlock. Raise an error notification if the receiver is not a boolean. Execution does not actually reach here because this message is compiled in-line."

	^ falseBlock value
]

{ #category : #'as yet unclassified' }
PCFalse >> not [
	"Answer the negation of the receiver."

	^ true
]

{ #category : #'as yet unclassified' }
PCFalse >> or: alternativeBlock [
	"Answer true if either the receiver OR the argument are true. Only evaluate the given block if the receiver is false."

	^ alternativeBlock value
]

{ #category : #'as yet unclassified' }
PCFalse >> printOn: aStream [
	aStream nextPutAll: 'false'
]

{ #category : #'as yet unclassified' }
PCFalse >> | aBoolean [
	"Answer true if either the receiver OR the argument are true. Unlike or:, the argument is always evaluted."

	^ aBoolean
]