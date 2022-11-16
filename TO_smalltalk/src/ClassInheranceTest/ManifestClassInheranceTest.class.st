"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestClassInheranceTest,
	#superclass : #PackageManifest,
	#category : #'ClassInheranceTest-Manifest'
}

{ #category : #'code-critics' }
ManifestClassInheranceTest class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#ClassInherance #testCase2 #false)) #'2022-11-16T12:52:45.395134-05:00') )
]
