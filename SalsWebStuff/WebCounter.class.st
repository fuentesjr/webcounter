"
A WAComponent that can count up and down 

Instance variables:
	counter <Number>
"
Class {
	#name : #WebCounter,
	#superclass : #WAComponent,
	#instVars : [
		'counter'
	],
	#category : #SalsWebStuff
}

{ #category : #'class initialization' }
WebCounter class >> initialize [ 
	"WebCounter initialize"
	WAAdmin register: self asApplicationAt: 'counter'
]

{ #category : #actions }
WebCounter >> decrease [
	counter := counter - 1
]

{ #category : #actions }
WebCounter >> increase [
	counter := counter + 1
]

{ #category : #initialization }
WebCounter >> initialize [
	super initialize.
	counter := 0
]

{ #category : #rendering }
WebCounter >> renderContentOn: html [
	html heading: counter.
	html anchor callback: [ self increase ]; with: 'Plus'.
	html space.  
	html anchor callback: [ self decrease ]; with: 'Minus'.
]
