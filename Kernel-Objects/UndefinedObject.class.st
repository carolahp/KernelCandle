Class {
	#name : #UndefinedObject,
	#superclass : #Object,
	#category : #'Kernel-Objects'
}

{ #category : #'as yet unclassified' }
UndefinedObject class >> new [
	"There is a single unique instance of me."

	self cannotInstantiate
]

{ #category : #'as yet unclassified' }
UndefinedObject >> basicCopy [
	"There is the only one instance of me, so answer myself."

	^ self
]

{ #category : #'as yet unclassified' }
UndefinedObject >> ifNil: aBlock [
	"A convenient test, in conjunction with Object ifNil:"

	^ aBlock value
]

{ #category : #'as yet unclassified' }
UndefinedObject >> ifNil: nilBlock ifNotNil: ifNotNilBlock [
	"Evaluate the block for nil because I'm == nil"

	^ nilBlock value
]

{ #category : #'as yet unclassified' }
UndefinedObject >> ifNotNil: aBlock [
	"A convenient test, in conjunction with Object ifNotNil:"

	^ self
]

{ #category : #'as yet unclassified' }
UndefinedObject >> isNil [
	"Answer true if the receiver is nil."

	^ true
]

{ #category : #'as yet unclassified' }
UndefinedObject >> printOn: aStream [
	aStream nextPutAll: 'nil'
]

{ #category : #'as yet unclassified' }
UndefinedObject >> subclass: subclassName instanceVariableNames: instVarNames classVariableNames: classVarNames [
	^ ClassBuilder new
		superclass: self;
		name: subclassName;
		instVarNames: instVarNames;
		classVariableNames: classVarNames;
		build
]
